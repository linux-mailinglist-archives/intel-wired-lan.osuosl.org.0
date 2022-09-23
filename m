Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A5E5E83A2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11207415CD;
	Fri, 23 Sep 2022 20:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11207415CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964991;
	bh=qLEnMHZom+1H4w0rT0amg9DB695UW0zZY4PvEf+WOSY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ImHMPgTkwRkAnyigHA88z17D+y5LIPWw7zdLP4ua3RlQm9dzfaXKr+ACvmQkIBCm2
	 9Wk25dqiR9f94P7yKARBDGwZBkWWpZAwhf8gz8N+mKY20g7s2i/6hi7PDkVlBPHAfb
	 PiobwNmbwXDlhKHyFa7S4BxL0cfr/8ymBHGl0r1xBssqCWhPwNDKjoAjSJFr1oA1mt
	 1iHhPeJtLfzXUjBS9Bm0NUmI8Dn5c9Uq8mICkDsmZP7w5tcKb9NR7O1s1AXMuL5gJ6
	 n3Q/hwm1J39jfwHZDsDwOIaISq8IPwcXZuacuv66TreVwc0k4HlJ7ARlgTiMvgs7/K
	 n9eno1U07kTHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WsRAB0IkwtJP; Fri, 23 Sep 2022 20:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61EA041619;
	Fri, 23 Sep 2022 20:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61EA041619
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0BD91BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C898241025
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C898241025
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mELkINxvtJGQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2675240CE8
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2675240CE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id u69so1278113pgd.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=X/Yo0q+LJh3/rts6UXiCkFsErG60vpqgZ/L53wodJpE=;
 b=dj800Cy39kov/Lm7A3lqHA61L4kcM7BUd1YCJP2Mswln8ZxiCqWt14BzgWEgfbUXA+
 fav71J1+Cvmn1a9aOO7hmd2N4Uem3qgkmRBfpXiDK3PY/GXqNjn1V2UTrKLd1Y1S386k
 ooUiOXSGMHJliYAjsnSM3GF2ArseK74HOTGIV4AIIx/t+g7KSfRi/dgf9eojpzL7nUaG
 BwT1b1mF2zDFh98WFy3XS4eX9AVu8G4rdBcAPk/nsEaGUwW1Qpcw6DjENYOpmve1CCSV
 ydlu4/AXEpHmiDwP6lpIaxx6dmr65jaoGV8a2iardzEgSAEsDnGpQvIJyy7JWTBy12Nr
 eLGg==
X-Gm-Message-State: ACrzQf1gUXg36nxSEhlky7zBadDw3O7pfH2iP7Lr7gpZ+e0cPSXPQ4+e
 mvflxWirFcD40Iun/Ym/rJopew==
X-Google-Smtp-Source: AMsMyM56PrOnj3O75SoOzdxaUyKZ0YbIXH0yPGDqg6UOnADEm1wpBRmS/rl1dQfty4+94PufpVyEyg==
X-Received: by 2002:a63:4b1d:0:b0:439:e6a4:e902 with SMTP id
 y29-20020a634b1d000000b00439e6a4e902mr9335669pga.212.1663964911544; 
 Fri, 23 Sep 2022 13:28:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 22-20020a17090a0d5600b001ef81574355sm2000341pju.12.2022.09.23.13.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:16 -0700
Message-Id: <20220923202822.2667581-11-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114; h=from:subject;
 bh=34QBkIPlID/8bnVmUZjxBAD5CQnxKEZULyryTOgjniU=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhblCci+wGv8iOvuMA8kL10auMgCdSAnR8YUMoXu
 podrrfKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJqB8D/
 4wCq8GoLp593BnoMNdwJoYvf4etLZwZGsXZQsb2VBiy0skIZlwiVr3PlOgTBYZgIzLvlvUxdUJ5nlX
 Bi7PnNee9K0Li5LxtO1cZdKiafC2g2Bwno2il0Lo40rZNh8zuXtHkOL9Ch6MatzIqZvHirzYXgdFYa
 kL+5yKCw2OQwWbSzxN2JM/vbJJUQqWo3IuvGbHZNr3neCmsRvYQL9SENnZqNlmEN0oWzba5MOArXOo
 /gL8NjrYcXMqpUjBsVYY3y9nJYmkYPHuf/2GpJoU3H8aNnc9kL8Pnb6DwPQil/tk64OQkt0b7ZcjrC
 G0P1WN75ngaL4hyDGzvdTSyhbfeaPY233mJqTfNH5oCljXV1jN8j7JHWKIlijEpvh+rgmsD8oUU7cT
 LaZlaPifCbnZzop1KYF9cjTfQ6B1FwHfcaDukW/X9RDudAeKfjA6FDVNBvMvz6dQzkfSaJU4YlVLat
 mUOaeTfq4RLXR/1FfCnYLeQzvwlAmM6D2JIyw+FADeIZXNcc0kh8AWEtFVPrlaFoC7ofIyB/PaclI7
 AeUp4jht1HTcepzxMUGZ3tJxRqUFmKdqW/dmu2F5hihUeoxfrDraNFqeBygde5JGfInhtRyFE314eo
 nj0zrS6Q1+iCwTFGvr/2/6qclufX48XSB7HUF/kPBPaTwX4S6IGvnRi92exg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=X/Yo0q+LJh3/rts6UXiCkFsErG60vpqgZ/L53wodJpE=;
 b=ZUb4dJcl9kyY0JCMIbSxhNelqg+q4A2wjd4CgDikdt5aQnXIoCAm64UQW+1n3wlzIC
 pAnpD7T83tfvNJ+uFbkJeFi1y8cQ0gxyzoEmIemLuV7nFZspJ2KQU5mmAB4gcKBwfFdP
 Er1yFNuC2cHt2der8y8JOYqcnXvTsxoObkuAY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=ZUb4dJcl
Subject: [Intel-wired-lan] [PATCH v2 10/16] openvswitch: Use
 kmalloc_size_roundup() to match ksize() usage
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, Pravin B Shelar <pshelar@ovn.org>,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Round up allocations with kmalloc_size_roundup() so that openvswitch's
use of ksize() is always accurate and no special handling of the memory
is needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.

Cc: Pravin B Shelar <pshelar@ovn.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org
Cc: dev@openvswitch.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/openvswitch/flow_netlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/openvswitch/flow_netlink.c b/net/openvswitch/flow_netlink.c
index 4c09cf8a0ab2..6621873abde2 100644
--- a/net/openvswitch/flow_netlink.c
+++ b/net/openvswitch/flow_netlink.c
@@ -2309,7 +2309,7 @@ static struct sw_flow_actions *nla_alloc_flow_actions(int size)
 
 	WARN_ON_ONCE(size > MAX_ACTIONS_BUFSIZE);
 
-	sfa = kmalloc(sizeof(*sfa) + size, GFP_KERNEL);
+	sfa = kmalloc(kmalloc_size_roundup(sizeof(*sfa) + size), GFP_KERNEL);
 	if (!sfa)
 		return ERR_PTR(-ENOMEM);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
