Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 562B3D4476
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 17:34:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 115292033E;
	Fri, 11 Oct 2019 15:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnjeA6llz5Iq; Fri, 11 Oct 2019 15:34:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 055F7203E9;
	Fri, 11 Oct 2019 15:34:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8DCD1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0BC220358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D-1vPqSmgMVU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 15:34:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 52CF82033E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:34:48 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id u22so14403905qtq.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 08:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=ku8mWhse7myNTSgXVtERvtlltFxzJS4viFwKBsP2Kto=;
 b=Cf3OVwn2GB9W+6JglhZoy9ftTzFsDTWIdhXgdup7BnPpRIyhP3OrWMkPzuoTjNJXAz
 F1cwiqlbmuEEUmjfbVK4Mtiappiy5JXta5lo5rO7STGevmKQEFGFKu3tCM4bs+KE+22A
 3rEBtX/jn0KTJ2H+NAb3qREQkEA9Ifpz61tvxufBcThzKg/O/W3T1YmVwqPoFeppd7f+
 V6FcqdlbKQzk/a2cNPTZwCll1EjRRvgHgpz+JnBMuZ/Mhl18Gvx4UNlAgZs2vC5Xy+Ud
 dC55fC+nJRpXpO3s7MBr+3rHb+DAivTtepUa8k7ML0YXdSpUdvonmMfjQ6hJEfiDjM+E
 erdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=ku8mWhse7myNTSgXVtERvtlltFxzJS4viFwKBsP2Kto=;
 b=LcSqInBGyOlfJx6PPUaKQheVnTUYaKYJG2pJ6J/XwQOyOaW8ZfRvJmEvIdwmQrmR/s
 BIZs4H3pG+qSKgf7/S3csY84lnkwjyCPg+kjIBuqqatrx0FempfnVutz2jS/Sydd21ya
 aAXS31BCm81GnjA/q13AtkgVC31QP6ePturQKSE794T96jABcjdTMsYFlBaenxcGKF4O
 YpNFPRcWn5her9cH7cYkR4290qL7692VwYUulGZ+uV4Mvh3HTJTN84SX99Wh3JGO/dBi
 mrH9ro4i6b/cDv8euolKNdkWWy+nLNuofD9tOht9TFZ+H3awHEnQTGKEkEN18tURkQ4C
 v+HQ==
X-Gm-Message-State: APjAAAWKnJdazKpZAK3gp3TEsgCqufVLTrASJGnHXJ/RKHDs1CE5040N
 fC3Pbjd6bWiZfRWEIwz3g+E=
X-Google-Smtp-Source: APXvYqzEzjydg6QBuYj8zOq8a8Ah58ATsyNuijjtyXfebaBjZuavmVFZ5peOiGgYTxQurgIDAPuwiw==
X-Received: by 2002:ac8:4915:: with SMTP id e21mr17846920qtq.69.1570808087106; 
 Fri, 11 Oct 2019 08:34:47 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id z72sm4964437qka.115.2019.10.11.08.34.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 08:34:46 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.h.duyck@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Fri, 11 Oct 2019 08:34:44 -0700
Message-ID: <20191011153219.22313.60179.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v2 0/2] Address IRQ related
 crash seen due to io_perm_failure
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
Cc: netdev@vger.kernel.org, zdai@us.ibm.com, zdai@linux.vnet.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

David Dai had submitted a patch[1] to address a reported issue with e1000e
calling pci_disable_msi without first freeing the interrupts. Looking over
the issue it seems the problem was the fact that e1000e_down was being
called in e1000_io_error_detected without calling e1000_free_irq, and this
was resulting in e1000e_close skipping over the call to e1000e_down and
e1000_free_irq.

The use of the __E1000_DOWN flag for the close test seems to have come from
the runtime power management changes that were made some time ago. From
what I can tell in the close path we should be disabling runtime power
management via a call to pm_runtime_get_sync. As such we can remove the
test for the __E1000_DOWN bit. However in comparing this with other drivers
we do need to avoid freeing the IRQs more than once. So in order to address
that I have copied the approach taken in igb and taken it a bit further so
that we will always detach the interface and if the interface is up we will
bring it down and free the IRQs. In addition we are able to reuse some of
the power management code so I have taken the opportunity to merge those
bits.

[1]: https://lore.kernel.org/lkml/1570121672-12172-1-git-send-email-zdai@linux.vnet.ibm.com/

v2: Move e1000e_pm_thaw out of CONFIG_PM region to fix build issue on Sparc64

---

Alexander Duyck (2):
      e1000e: Use rtnl_lock to prevent race conditions between net and pci/pm
      e1000e: Drop unnecessary __E1000_DOWN bit twiddling


 drivers/net/ethernet/intel/e1000e/netdev.c |   75 +++++++++++++---------------
 1 file changed, 36 insertions(+), 39 deletions(-)

--
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
