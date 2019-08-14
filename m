Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524788E0C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D503888303;
	Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fcWT+DuSLj-K; Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B788188301;
	Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B256E1BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE5688654E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cr220A_IsICB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 15:41:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32F3086529
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:41:32 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id i2so50898199plt.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 08:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=A4Rxd200j00xiq48qsdaEzJnhe23VeGpskQxHrue20o=;
 b=MF5oaFy7zhu1XET6aWH8DvZKm/S+BXbMmVzQmOHd9PDB9+ZQ9mdkoC4BQFEp+XY5zG
 /DbUUN4i8h3F5osQdAwKDzn7yywa/tXIvMp053XWIs1vKbHavMvwp8rHhZAPoVcH+ql4
 7UORlZJq7JaWaxeGIKxBuWVm2sR9gN6a9JfcEp9pPKJmyPEKsdhA+xr4VYWv1mNJu05x
 we7uTWZte+hGWiBubPRTGPjGY2uh178iXJLwL1a2qVOS6cEzUnIQR0KY+tT597WEu64o
 ZXTJgAyd65hlMLhwJXmn7+mGQfsbQit6zc6H4eZDkII3p/bCVqw2e0XTWmEXhxT7XEyC
 206g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=A4Rxd200j00xiq48qsdaEzJnhe23VeGpskQxHrue20o=;
 b=DHPdxYdEbyXIuFLLvJWNnOKGbPVgtimOyQZFcYyUJLKlSnmTIahtZPM4KyJBTKxzq5
 EbFznkqPTAYJjIdbYkwG/tAiu7oSI53Z2hZbitvObexm82GnW2sBlVn+mOdYLrq97J7B
 dGUYUYbnTo1DpJLBDfmjd5W5VNebTiEdduV+Eu86Jbc/qFSpOSWTw/pCZAP1S3Bm4yFI
 QdsFg/a29si4uURzNUKuHzPDwyCWK8AW4YKDCE7jJU8cEPSIk1K5afOyBJNF83r3tRtu
 WXbY1pdim1z4kDwnVGkoUPCJOUR78FVqslPGnIBNex7agnFYXepwUtU7sc9Pm8rOmtZf
 U5HQ==
X-Gm-Message-State: APjAAAVUJCupJQZ7vcYgKDr+mpl+8skJoVDfUrvPXVo36/EQ08HVIuMw
 qbpOyoy7d2Vin92jjWTMb2E=
X-Google-Smtp-Source: APXvYqxLUw57lXhjtooJWVoWXHXuORVhgljCxNXzthbyWBmRv+HF3ckdxnvC2f6Vf0cL83CQye8JFg==
X-Received: by 2002:a17:902:8345:: with SMTP id z5mr65579pln.29.1565797291885; 
 Wed, 14 Aug 2019 08:41:31 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id s72sm65545pgc.92.2019.08.14.08.41.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 08:41:31 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 08:41:29 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <DA842C18-42DF-4559-A746-F0B428B3CAB5@gmail.com>
In-Reply-To: <1565767643-4908-4-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-4-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/8] i40e: add support for
 AF_XDP need_wakeup feature
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

> This patch adds support for the need_wakeup feature of AF_XDP. If the
> application has told the kernel that it might sleep using the new bind
> flag XDP_USE_NEED_WAKEUP, the driver will then set this flag if it has
> no more buffers on the NIC Rx ring and yield to the application. For
> Tx, it will set the flag if it has no outstanding Tx completion
> interrupts and return to the application.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
