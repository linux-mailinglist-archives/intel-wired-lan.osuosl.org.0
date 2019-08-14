Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14698E0BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73E45882DD;
	Wed, 14 Aug 2019 22:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMVCnGXEWEBi; Wed, 14 Aug 2019 22:31:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05973882ED;
	Wed, 14 Aug 2019 22:31:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5981BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B226203F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDP0A9UTXxJN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 14:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 19391203F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:53:54 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o13so53193247pgp.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=+iv6tMK/o9vMBCxy40O2J+PdS9TBkY+n+okgVzN9Tqw=;
 b=oeA15lyRbPS94WCVj5L8WfPsOiB030AomtlKlmEnzKHY9ppuXhOis3qbtEfov6Hm//
 EPXPtqzIhBo1AZWTz8as4/tYw5Z03niKCtuZht7WOPOFACJqvI6XyKLr1/mc5uP4dfCX
 a8Nfm/GXnx3c6BK4qLZTC3CXtVRW9BDQMebfPzvd6+oFY13e6IxsMGcuRY51MZZDCq/W
 XCo15Dr/yfvyq2kP/vHiIif41arVcLF18y9nk4tTfFUvVj9u6d3TjT5Ge4++Xo1OdWf8
 whkcFWO+OqEqvyUJIqWyfLtaKrVXLldrFBfv9ecKMAAKqyPvYtaQFE2VaccbTPnHptgc
 aFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=+iv6tMK/o9vMBCxy40O2J+PdS9TBkY+n+okgVzN9Tqw=;
 b=VVWRKbUcqj8O2olRmSIQMgOGPG6OfxyXMy5oLKHLfS8wDS3DBxZUlLX2SpaZ9v0Hew
 f9diTtLKwQOTLFcdD2jza/3IrVyBHKJyOSEGqfC2Z4H+imPhcoU37sT60Hxr9En3t6MK
 46Wssid0ePbRtMuP6LUTx5ukude/5HIQyzc52SKbI9V9OoHqsN6KCr6e1Xh/6UqLzj40
 eiiOCkT7hCMV7BRRkobc97Yg1ajCGiRecc6ecJFCbWYUMWqLxMnTiX3BJ6+8eUSQmpKi
 mTWNlVhNwNR3sRvp+JO5jpl7VTsi2uGjwQ7k0kCbYr6MpSSmK5zGt9LGswCt2JXC8iu5
 KT0A==
X-Gm-Message-State: APjAAAVlgL2zgijSNXVdxmGPpRZtP7MSMLPxPMwv0fTRyqyjMwQ+MUV4
 CNc2VIUQKx80rM6tKo6nGzs=
X-Google-Smtp-Source: APXvYqwkCrLOvikbUjEU3qo2UvtHhQFopTxQRFv6lIHxPE5Q7nVoLGeEyOR0lvXOYLX6yuzMCTNufg==
X-Received: by 2002:a63:2887:: with SMTP id
 o129mr32644602pgo.179.1565794433673; 
 Wed, 14 Aug 2019 07:53:53 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id k64sm90010717pge.65.2019.08.14.07.53.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:53:53 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 07:53:51 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <52303412-E8CB-4F34-A41D-4CDE12D719CA@gmail.com>
In-Reply-To: <1565767643-4908-8-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-8-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 7/8] net/mlx5e: Move the
 SW XSK code from NAPI poll to a separate function
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, maciej.fijalkowski@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:

> From: Maxim Mikityanskiy <maximmi@mellanox.com>
>
> Two XSK tasks are performed during NAPI polling, that are not bound to
> hardware interrupts: TXing packets and polling for frames in the Fill
> Ring. They are special in a way that the hardware doesn't know about
> these tasks, so it doesn't trigger interrupts if there is still some
> work to be done, it's our driver's responsibility to ensure NAPI will be
> rescheduled if needed.
>
> Create a new function to handle these tasks and move the corresponding
> code from mlx5e_napi_poll to the new function to improve modularity and
> prepare for the changes in the following patch.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> Reviewed-by: Tariq Toukan <tariqt@mellanox.com>
> Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
