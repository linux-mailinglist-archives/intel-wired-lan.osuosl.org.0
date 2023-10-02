Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3C07B5DE7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 01:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0DD341745;
	Mon,  2 Oct 2023 23:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0DD341745
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696291025;
	bh=Bdw22ZGGKRHLMg/2rK+HtmdwBhG3Yz3TwZbYBi3VBNE=;
	h=From:To:In-reply-to:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v95/z5lnARsLj/y08i/hV1UnecoK9RrgnPo6ylZBMn0ZofFKmCVGoqnv6exnXAd0M
	 9W1oQQW5fL14quHs+sUDoPrrS8o3luj3j0LQ+yxYPycDoHwS9gu/KoQxlZeQW5rdPB
	 USNYfKBWKrcKXO905ErGeJQuVYFh9OpIIqpKPfqlnAWTTMFTsUIMzaqbcGoM331IZa
	 qzYlDN9+11D9ZHTVjZmHY7lEFkXlB0EZePi7cl4rIrkEpHdoyFHeAXJpqr5rT1FrRW
	 ZSWyQbl+XZns+GWSff0PO8P3TV1C80wFzs3DwGvbplzmV6/GMbdjE0VDocrCiQbpzP
	 ZpWAQnmWMrB7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wCEhZ1sYpQpp; Mon,  2 Oct 2023 23:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97D534170A;
	Mon,  2 Oct 2023 23:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97D534170A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50E361BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 23:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EC0E81FAA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 23:56:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EC0E81FAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qVOHKT2MC4Ui for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 23:56:56 +0000 (UTC)
X-Greylist: delayed 421 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Oct 2023 23:56:56 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81AEA81FA9
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81AEA81FA9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 23:56:56 +0000 (UTC)
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 643F441DC7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 23:49:49 +0000 (UTC)
Received: by mail-oo1-f70.google.com with SMTP id
 006d021491bc7-57b7aefb23aso432709eaf.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Oct 2023 16:49:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696290587; x=1696895387;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AjavhkXEqqoxJ4mo7EqqEJ3v6qKyv49UU0GhFeQVQ6U=;
 b=ekMI8HH43CGNJylZnehvNtC76PzbP0mVvC52h8xdOj26YR4vgn5pfNyhEaLvEDzE+7
 3J+7Bv73NOOLSILLv9pHr5u81gdo/KJEEOxE0xCAtbnaWtuisByUmTl2tVtrwcxL03+m
 yt92ToqJUe797pUPzDmu9NGW6LDfPZKVkYh5uWOf44JGyi8FYZBe5+PTIxHM+fLTmdP5
 AnDgoUKviaKzNpP//Ag5Tb6Xk2rLZjNvc03lnm/fZs9WAFXdCOEajTMH89q/iz3FfUPL
 Fs9UQPsCKcaWUVnQt02+tmY9hy6t4HJblWGqShGO3ldJNsR6NL+OaRNxgguH/5xJg5J4
 G/pw==
X-Gm-Message-State: AOJu0YxziSxZuJtoWnX57zD4m/ut5XCp6AhCUHeUWLJj2qZn6nnDRB8H
 3brL4S5TEnL7y8QfDgNRTNYZNYH9qwvfiM/7Jgsyb6nzCtGF1pPZucdGCgVDqOScq78MziimOsl
 VV5dMSOHOxdX5UYOUXpa2yeRviZCgDLjZ5HbSVvOGfiY/KLQ=
X-Received: by 2002:a05:6358:885:b0:143:7d73:6e66 with SMTP id
 m5-20020a056358088500b001437d736e66mr15071593rwj.1.1696290587494; 
 Mon, 02 Oct 2023 16:49:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxwIqMeEy5Bt05d/eyb63qXsAy1I0+XnX4JXJlzbSFzbibgmnr1DZBWve3KuOEFy+L0HDH1w==
X-Received: by 2002:a05:6358:885:b0:143:7d73:6e66 with SMTP id
 m5-20020a056358088500b001437d736e66mr15071572rwj.1.1696290587159; 
 Mon, 02 Oct 2023 16:49:47 -0700 (PDT)
Received: from famine.localdomain ([50.125.80.253])
 by smtp.gmail.com with ESMTPSA id
 r13-20020aa78b8d000000b0068fe39e6a46sm56681pfd.112.2023.10.02.16.49.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Oct 2023 16:49:46 -0700 (PDT)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 3FF125FEAC; Mon,  2 Oct 2023 16:49:46 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 38C939FAAE;
 Mon,  2 Oct 2023 16:49:46 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-reply-to: <20231002200232.3682771-1-jesse.brandeburg@intel.com>
References: <20231002200232.3682771-1-jesse.brandeburg@intel.com>
Comments: In-reply-to Jesse Brandeburg <jesse.brandeburg@intel.com>
 message dated "Mon, 02 Oct 2023 13:02:32 -0700."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <17922.1696290586.1@famine>
Date: Mon, 02 Oct 2023 16:49:46 -0700
Message-ID: <17923.1696290586@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1696290589;
 bh=AjavhkXEqqoxJ4mo7EqqEJ3v6qKyv49UU0GhFeQVQ6U=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=T21PQSlFgKEpbOgA4GjF3rCqActK5aCw1glvXvojWpK9cPVWGhJgDHPa1T1ThkgRQ
 antid2vtm0DMDlDQokYN4cpTqbbmwup9JdwiIZTc7f0nMrCULIOkv7419HnXA9GKYe
 MQFtliHTJFuZeUzkauSrozUN8mJD9vTFgmQkXFn44pMKdcJs85F2l/7VONxeSdAALy
 9NORXDyiD4R62BIpJv+Z7ahffp8xWWfGfmVpztf2LL5hXZ/A235udrIayD1L6QJz1a
 +TJoD0r/T/VhQxqnzP7FniM33NSwL0lmfHVFyPOPMpXt5VNosWA2f0GOL+OHuzzdtn
 kH3kIaDx2mkrQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=T21PQSlF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: reset first in crash
 dump kernels
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
Cc: pmenzel@molgen.mpg.de, Vishal Agrawal <vagrawal@redhat.com>,
 linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, jkc@redhat.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesse Brandeburg <jesse.brandeburg@intel.com> wrote:

>When the system boots into the crash dump kernel after a panic, the ice
>networking device may still have pending transactions that can cause errors
>or machine checks when the device is re-enabled. This can prevent the crash
>dump kernel from loading the driver or collecting the crash data.
>
>To avoid this issue, perform a function level reset (FLR) on the ice device
>via PCIe config space before enabling it on the crash kernel. This will
>clear any outstanding transactions and stop all queues and interrupts.
>Restore the config space after the FLR, otherwise it was found in testing
>that the driver wouldn't load successfully.

	How does this differ from ading "reset_devices" to the crash
kernel command line, per Documentation/admin-guide/kdump/kdump.rst?

	-J

>The following sequence causes the original issue:
>- Load the ice driver with modprobe ice
>- Enable SR-IOV with 2 VFs: echo 2 > /sys/class/net/eth0/device/sriov_num_vfs
>- Trigger a crash with echo c > /proc/sysrq-trigger
>- Load the ice driver again (or let it load automatically) with modprobe ice
>- The system crashes again during pcim_enable_device()
>
>Reported-by: Vishal Agrawal <vagrawal@redhat.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>v2: respond to list comments and update commit message
>v1: initial version
>---
> drivers/net/ethernet/intel/ice/ice_main.c | 15 +++++++++++++++
> 1 file changed, 15 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index c8286adae946..6550c46e4e36 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -6,6 +6,7 @@
> #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> 
> #include <generated/utsrelease.h>
>+#include <linux/crash_dump.h>
> #include "ice.h"
> #include "ice_base.h"
> #include "ice_lib.h"
>@@ -5014,6 +5015,20 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
> 		return -EINVAL;
> 	}
> 
>+	/* when under a kdump kernel initiate a reset before enabling the
>+	 * device in order to clear out any pending DMA transactions. These
>+	 * transactions can cause some systems to machine check when doing
>+	 * the pcim_enable_device() below.
>+	 */
>+	if (is_kdump_kernel()) {
>+		pci_save_state(pdev);
>+		pci_clear_master(pdev);
>+		err = pcie_flr(pdev);
>+		if (err)
>+			return err;
>+		pci_restore_state(pdev);
>+	}
>+
> 	/* this driver uses devres, see
> 	 * Documentation/driver-api/driver-model/devres.rst
> 	 */
>
>base-commit: 6a70e5cbedaf8ad10528ac9ac114f3ec20f422df
>-- 
>2.39.3
>

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
