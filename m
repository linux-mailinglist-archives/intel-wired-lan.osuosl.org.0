Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D6B8E0C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D193D2278C;
	Wed, 14 Aug 2019 22:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYs83G1xaa4z; Wed, 14 Aug 2019 22:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C03922785;
	Wed, 14 Aug 2019 22:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65E441BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F71A87698
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KnZ5xI9O7A3D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 14:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24A848764F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:47:29 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d85so3216129pfd.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=+bfgMzTl7z9Y6DJNVLvjkdqFQ1VmcHfYDw/wszdBB/0=;
 b=X2XwwVDGzuGz6/0z5RsERMw2Ub9WInmFP03LEyT2f8JNPHLqSZkC1LZvgm/52+af65
 O8fZq+T9yx7pplCSHbbzYR8+nx7xz+jYnjtof69KPBkSWaIee+/dS99xQBGyS/Ow2S1v
 ov3ysC1qBNgzPaXlG0a83V6+Vz64OQODczPMlli9/EsaA7SZLREx7nPmD5GawP4MUk8B
 CfMtIuusoNyg+pfMZ7RR/KYwkrjygerAj8MJvBwd+YPOg2lWLeHgl+yQPMru89I6qX9W
 o9gRuz9eJkkcaB3t1uuj+IJCh+yyg1T/iJDO6Qu9tiRo3rZ/eRM5F1vWOGMqIE+w5DyM
 LZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=+bfgMzTl7z9Y6DJNVLvjkdqFQ1VmcHfYDw/wszdBB/0=;
 b=mua5Bo1RfKO4r8CUXPXYTquoVnKMOLUyKUNNmzz8igonQto+ZlmVmqkv9HiZbe7Vpa
 6Oee6w5unj543mm4kIJtkdkJl1yJajk/X12CwDAZNRlrjbSnl0AuuaQGNh5X1cUL3Sf2
 JB6TeM7Bdy5KhvePqRU/66Gu+xIas7W8xzrBwK823bIvB07/mBIIlEuAATDX3XeuNOyG
 loBXmiJiursi1pXcFqX6ekVkvci+C3g2qG3pPcullQTJWZFqnJcTvqPbBAy8g9475G8a
 XqpA0LvJFFeZbdH/l8fx0y5abY+3BNy/ML5NYa1KfIrUo74nGtmBW00llDuYhrLZbQwv
 FrUQ==
X-Gm-Message-State: APjAAAWBRntG538t4+ncbtW4mpI4SgCOCGHVzn3/B2Je6kBk1HPWsU8u
 m4U/tSGRD4B8oA4zLlNLBNA=
X-Google-Smtp-Source: APXvYqw0WB3o+N7IJOrL257UyMoZNcm9pS+lgtDN+iApwhFzkLAQqG9TZG01NXjoXJ/ZmuPBjD/kOQ==
X-Received: by 2002:a63:2a08:: with SMTP id q8mr38941051pgq.415.1565794048667; 
 Wed, 14 Aug 2019 07:47:28 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id v184sm12995pfb.82.2019.08.14.07.47.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:47:28 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 07:47:26 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <238E96EC-0BE7-461C-8FF8-509997EEBA31@gmail.com>
In-Reply-To: <1565767643-4908-3-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-3-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 2/8] xsk: add support for
 need_wakeup flag in AF_XDP rings
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

> This commit adds support for a new flag called need_wakeup in the
> AF_XDP Tx and fill rings. When this flag is set, it means that the
> application has to explicitly wake up the kernel Rx (for the bit in
> the fill ring) or kernel Tx (for bit in the Tx ring) processing by
> issuing a syscall. Poll() can wake up both depending on the flags
> submitted and sendto() will wake up tx processing only.
>
> The main reason for introducing this new flag is to be able to
> efficiently support the case when application and driver is executing
> on the same core. Previously, the driver was just busy-spinning on the
> fill ring if it ran out of buffers in the HW and there were none on
> the fill ring. This approach works when the application is running on
> another core as it can replenish the fill ring while the driver is
> busy-spinning. Though, this is a lousy approach if both of them are
> running on the same core as the probability of the fill ring getting
> more entries when the driver is busy-spinning is zero. With this new
> feature the driver now sets the need_wakeup flag and returns to the
> application. The application can then replenish the fill queue and
> then explicitly wake up the Rx processing in the kernel using the
> syscall poll(). For Tx, the flag is only set to one if the driver has
> no outstanding Tx completion interrupts. If it has some, the flag is
> zero as it will be woken up by a completion interrupt anyway.
>
> As a nice side effect, this new flag also improves the performance of
> the case where application and driver are running on two different
> cores as it reduces the number of syscalls to the kernel. The kernel
> tells user space if it needs to be woken up by a syscall, and this
> eliminates many of the syscalls.
>
> This flag needs some simple driver support. If the driver does not
> support this, the Rx flag is always zero and the Tx flag is always
> one. This makes any application relying on this feature default to the
> old behaviour of not requiring any syscalls in the Rx path and always
> having to call sendto() in the Tx path.
>
> For backwards compatibility reasons, this feature has to be explicitly
> turned on using a new bind flag (XDP_USE_NEED_WAKEUP). I recommend
> that you always turn it on as it so far always have had a positive
> performance impact.
>
> The name and inspiration of the flag has been taken from io_uring by
> Jens Axboe. Details about this feature in io_uring can be found in
> http://kernel.dk/io_uring.pdf, section 8.3.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
