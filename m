Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B933AA4BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jun 2021 21:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFB6F406B9;
	Wed, 16 Jun 2021 19:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpFDVStanidK; Wed, 16 Jun 2021 19:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C43940234;
	Wed, 16 Jun 2021 19:53:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6271BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 19:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D33560797
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 19:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtbUHXVAoWJx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jun 2021 19:53:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD40560771
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 19:53:48 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id h12so1676259plf.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 12:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NzHup0H6Vegu59qU+atIUwPpdONAxlTyUHNty9ohr3s=;
 b=CSCRXMIMvz3qd+sf9SNCKVEfrrcvoVXugabEeD9iBEFHR2z5bA1g/qwK3IelLRbF+0
 vEKoMhMXQX6ULMQAY6b8FyNwUnMea8CB9dWCEnjp+48WQk4LX6Lx5XI9k9f7KnXDkEH8
 kx4+c+y4jvdbtVYjL7hpxDJEDhVtJzK4AZx6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NzHup0H6Vegu59qU+atIUwPpdONAxlTyUHNty9ohr3s=;
 b=h8OoibciinFsZZfRS8KVFnATSEcfvp2V+pfjFU0EVvW5mzTlVPhf4AxSR9IfMqSl1G
 UT22txxFUK1KXCEovW3/3gODlpoi8AuXkxgmMsK/NuJsM41Sq3VmKCFRKSstyOeRY/1W
 hbUu4245v/2FO2MjDE5olsMfDUheicxMA2trUFtPx6mXV7IYTYUFiG408cXH5X7q920v
 pjkcpemyDmlLN95bgtQ9/bk54wBWdJlkrhPpnNaRr9kRT3D2JnK1l9lUw6rXnLgZVJLZ
 j8rVglYWi4hKhR0CW0jzlHH3clvTKee6KScXKci4TvBL9obEU9g/BV3mgT/LnE94tQU/
 wnZQ==
X-Gm-Message-State: AOAM532rdVxaK9FL+33VGED39Ef9gs+JGmL4auUVcxZE/E0anLkn2qRM
 MSoGC/AE5hTgc+broU6pneOIbA==
X-Google-Smtp-Source: ABdhPJy/Y52NcvPMMjqRk40SyVKghvJv+lgF6vsqbYRpbjyBW3HMlkExU8OnZrsBDz31Np3iOpPS7A==
X-Received: by 2002:a17:90b:3e89:: with SMTP id
 rj9mr1523673pjb.114.1623873228411; 
 Wed, 16 Jun 2021 12:53:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f15sm3007836pgg.23.2021.06.16.12.53.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 12:53:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: netdev@vger.kernel.org
Date: Wed, 16 Jun 2021 12:53:44 -0700
Message-Id: <20210616195344.1231850-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=4478c5fecbde1e0721ac67faca5780db5a883da6;
 i=fkpCCG3twRCnzgbx6tnA60/xgpLIFo7OVVMVyUOI52M=;
 m=CF57NG64wUjRAJMr07rJpYR31VG7hNQuEGsWk+kxwfo=;
 p=0rZkHGyxgtrru4XR+5wKed0CXqik4Lmw7Ni3XpznuwU=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026;
 b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmDKVsgACgkQiXL039xtwCZCeg/+P5j
 WLT5CuaEh2UcftJai0qrhkuUHyev0+BVMDvbeGZ6VdaLbvqmcqsXRhc1JsJSOwLFJj851Nvc6a/Ty
 5oVLkVa3RW6qr1UsR/9B5jnnm2DPI2+d4dBhHWRTDC8seJIIbKzKp1cOnJydFG97c8/uHgMyhPJap
 k/Yk3IrFJVLuGGwhmbdf0VXquNch9ph6x8pZBJRUi35mEmIVw1KTI2T8/obkd3I8jJsVwLlM1CxT3
 SXVtX2nU1pZY3xjqVF0oNdiLz5gl/4crHtt4VXXpyh8Q391+4ypojwRYXZyYyqxhBYmMek1igCKZ/
 Zwnat30HmlP5PWJayhnv01I7BUt/GQmvc4JPWm1qE9mbNAEKrGg3tIYSyMg4egu1pmh+Kd9gQpztt
 PMABu0r+VJdpq5TvpdckyZeo59jc4mOr797arZQ6gnmDWTPH/TLJDRCo/Q3WLHHqtk02oYhji3Set
 BGA+1hbRyfeiVgU1eA0tCl8iVwVdJRfMp9rJSS66qZJm5W0gEhH3BuOpZEYaECDA4OBcv3GYgCSsF
 nRkzfc0TqXP4vpBQiRdtj7dgoHFvfXPncL4H6lZ3zpNybTWwEOvbX708tq3DIlpm4cO7ZjghyZvoM
 2xFRSxsCBcbrlP1eV5jxudJx3jLaAnA91nGp3wXIz4vFx++il4A05k5BsW3Nm940=
Subject: [Intel-wired-lan] [PATCH] e100: Avoid memcpy() over-reading of
 ETH_SS_STATS
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally reading across neighboring array fields.

The memcpy() is copying the entire structure, not just the first array.
Adjust the source argument so the compiler can do appropriate bounds
checking.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/intel/e100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 1b0958bd24f6..1ec924c556c5 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -2715,10 +2715,10 @@ static void e100_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 {
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, *e100_gstrings_test, sizeof(e100_gstrings_test));
+		memcpy(data, e100_gstrings_test, sizeof(e100_gstrings_test));
 		break;
 	case ETH_SS_STATS:
-		memcpy(data, *e100_gstrings_stats, sizeof(e100_gstrings_stats));
+		memcpy(data, e100_gstrings_stats, sizeof(e100_gstrings_stats));
 		break;
 	}
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
