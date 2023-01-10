Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7A1664618
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jan 2023 17:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F6AC61038;
	Tue, 10 Jan 2023 16:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F6AC61038
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673368337;
	bh=ey8GIjYVnT6IqXVMM4Kqqbv3CRqxLbTR2ngXfkivvB0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vLygv/MCdpyPd0ntojueFnHCdj/ZIro7RsF+BiMK19esGg+uHOR6S/3tLrkp3+RuR
	 XwQNIvloBd8ITnSkwDr6J1iwIZz8q3ZPcWzHZely0h2r8loE03Dn1OEytSsxt2qvhl
	 5TvE7VztTMc3lAyDcoNx53p1mYbYubuXGa1o0jBSA2iBer9KOj5XMVVn36xAagqwbk
	 GtRWQl1e0zbOywDDGeH/XTUu2fSYtpeOoKtiZYf6ZkPURXMExhz4fsygskPj1IBWko
	 23/PwomIA0USlclnSb50mLlM31/e74GoHE+Zd1fnRclB2JeVRA5tN7yAh4X9qRlu5E
	 05vUso1tJIATw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0y_Rw7TsSd-L; Tue, 10 Jan 2023 16:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A428A61032;
	Tue, 10 Jan 2023 16:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A428A61032
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCFE41BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 16:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9582F40B65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 16:32:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9582F40B65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lchau8DnylY3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jan 2023 16:32:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDC4440B69
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com
 [IPv6:2607:f8b0:4864:20::1041])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDC4440B69
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 16:32:09 +0000 (UTC)
Received: by mail-pj1-x1041.google.com with SMTP id
 b9-20020a17090a7ac900b00226ef160dcaso12301410pjl.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 08:32:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RZf8KE2jGADdnneGpH5rMIEd+76rQYqRcfU6WstpDcg=;
 b=EVmoU38iPQ5qaNZNXAIi+cfBqcvQoyVLdGcPkTFUgVRSycnf4mJvzR1/qvFlH3bkUK
 ryRzlAPO7pwzRu0Vc2GEDEvuh8h+2TC1Dyr1FvXf7Yj6PYI5v9Knt3KFxfHdO8O1pFOe
 eu53aylKjc/TJ+6cqlvtKXFpyafTkmdPdxzUExNEMB/iTQRxM0nNFXISE2D89IsemYte
 sWRbY1vyIsdy1b/ZSlCs/bWC96HHoNANKDU2zM1z2D0DqfS5raqPu/F/gN9dtFytogpZ
 9REbGfASN9Lu+FGjGVDt/bvWIn6D+oXxTUjGsLz/Yj+nC+0IGuasfRCRzOQr+AhVKKfs
 +OIQ==
X-Gm-Message-State: AFqh2kr+bsC6tQgMgqgyk8acPVqm6PHgr9atL2T/P5EeDH5JTmtAbt7z
 FXBOZxSX9WdunaYVQelMOx4UMA==
X-Google-Smtp-Source: AMrXdXt2CQ1h4vArV4X6bU2e/QV8Xwnv1ErGXRGt/sziNANSyWOFaFG3tzEDkhE5PE35+Dv+i5rn1w==
X-Received: by 2002:a17:903:234b:b0:192:9f2d:d6b9 with SMTP id
 c11-20020a170903234b00b001929f2dd6b9mr59190932plh.9.1673368328762; 
 Tue, 10 Jan 2023 08:32:08 -0800 (PST)
Received: from localhost (thunderhill.nvidia.com. [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a170902e80600b0019251e959b1sm8272787plg.262.2023.01.10.08.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jan 2023 08:32:08 -0800 (PST)
Date: Tue, 10 Jan 2023 17:32:05 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Y72TBSH/QnJhnYIx@nanopsycho>
References: <20230105234557.never.799-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230105234557.never.799-kees@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=RZf8KE2jGADdnneGpH5rMIEd+76rQYqRcfU6WstpDcg=;
 b=6NAHB2GW7EvN93wl5qF4QCuvm+yzT2rAkU6qb4Imc0cJPZvPMO+630AKFbiemUm/Lg
 O0mPXC7DLCHS2JPswsGg1B9Nu21/LQsNa1J9PV5oYp5BDiui6g9J5lk9Ye+8kvMn0Llu
 Ul4/SD2BjRVgTyJOFTegVtqnj+vUmOidxDfManycD5hPV15K3xXExyoZwqgxfvbmRlDJ
 NZIDkUY9qHe2Yz+7V6OnoXnMnj7TDi+a1BAzwVpiy9QNvBkHYVguN0w0Fxr2d2PGvPUa
 ISJwlDsbWtL6yeF2TnAAYsY0Goy00knhGChqXoIDthjrMBp65ec/DSXDa1PkU7mNogRP
 n5EQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=6NAHB2GW
Subject: Re: [Intel-wired-lan] [PATCH] net/i40e: Replace 0-length array with
 flexible array
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jan 06, 2023 at 12:46:01AM CET, keescook@chromium.org wrote:
>Zero-length arrays are deprecated[1]. Replace struct i40e_lump_tracking's
>"list" 0-length array with a flexible array. Detected with GCC 13,
>using -fstrict-flex-arrays=3:
>
>In function 'i40e_put_lump',
>    inlined from 'i40e_clear_interrupt_scheme' at drivers/net/ethernet/intel/i40e/i40e_main.c:5145:2:
>drivers/net/ethernet/intel/i40e/i40e_main.c:278:27: warning: array subscript <unknown> is outside array bounds of 'u16[0]' {aka 'short unsigned int[]'} [-Warray-bounds=]
>  278 |                 pile->list[i] = 0;
>      |                 ~~~~~~~~~~^~~
>drivers/net/ethernet/intel/i40e/i40e.h: In function 'i40e_clear_interrupt_scheme':
>drivers/net/ethernet/intel/i40e/i40e.h:179:13: note: while referencing 'list'
>  179 |         u16 list[0];
>      |             ^~~~
>
>[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#zero-length-and-one-element-arrays
>
>Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>Cc: "David S. Miller" <davem@davemloft.net>
>Cc: Eric Dumazet <edumazet@google.com>
>Cc: Jakub Kicinski <kuba@kernel.org>
>Cc: Paolo Abeni <pabeni@redhat.com>
>Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
>Cc: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org
>Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
