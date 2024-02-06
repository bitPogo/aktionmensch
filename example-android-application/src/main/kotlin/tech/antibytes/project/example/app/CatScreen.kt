/*
 * Copyright (c) 2023 Matthias Geisler (bitPogo) / All rights reserved.
 *
 * Use of this source code is governed by Apache v2.0
 */

package tech.antibytes.project.example.app

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import tech.antibytes.project.example.R

private fun Route?.toTitle(): String {
    return when (this) {
        Route.LOTS -> "Lose"
        Route.WIN_GAMBLING -> "Gewinn prüfen"
        Route.WIN_NUMBERS -> "Gewinnzahlen"
        Route.HUMANS -> "Menschen"
        else -> "Start"
    }
}

private fun Route?.toImage(): Int {
    return when (this) {
        Route.LOTS -> R.drawable.lots
        Route.WIN_GAMBLING -> R.drawable.win_gambling
        Route.WIN_NUMBERS -> R.drawable.win_numbers
        Route.HUMANS -> R.drawable.humans
        else -> R.drawable.start
    }
}

@Composable
fun CatScreen(route: Route?) {
    Column(horizontalAlignment = Alignment.CenterHorizontally) {
        Text(route.toTitle())
        Spacer(modifier = Modifier.height(5.dp))
        Image(
            painter = painterResource(id = route.toImage()),
            contentDescription = "",
            contentScale = ContentScale.Fit,
            modifier = Modifier
                .size(300.dp)
        )
    }
}
