Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7942CC051
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 16:07:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 77C002E260;
	Wed,  2 Dec 2020 15:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUI48NhnP1pU; Wed,  2 Dec 2020 15:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9AF22E268;
	Wed,  2 Dec 2020 15:07:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F6661BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B2F58799A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h4JV1heSdieo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 15:07:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99E1587993
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:36 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id b26so777658pfi.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 07:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0rMG30bUe2+z4/9iFnHktL0Dc4qw/SCIVrJgeuTjN1Q=;
 b=OW5N8Q3FyvFiL1aYcnUlYaZc+UjlQ3OwENcmuDhmFV14Y2Pt4gA6HpWKSM2QhnUX/T
 UPq8H+sr5ovSUXH93KVQ6lpoaL9mwTUw8zOjNECp/4vhNytzjdxxbgUNDiV+qjU083im
 7qR9Y6jlpDdY/8EM3b+lJdLoNTFQo2yXa/7FZULWgbzaRihCQ2rRgM45I2BtIiKUzAuh
 iVtoBYZ2IzY0aYqXYgS6mEstuJiUPKgCKO5yCEA5E55JNQ+YDYPLIcE3OAYZlmfayhHn
 6gNpZULWloHamNLbArymMraVOtZmf6x6jtGf3fLFIkWywierTTWfK40nVXPYr3y8yhs8
 Z8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0rMG30bUe2+z4/9iFnHktL0Dc4qw/SCIVrJgeuTjN1Q=;
 b=Ku+eOCa7GkuyaJzoYbJ7xS/R+nXqLiDqLuDZwPca55K7aMOb2KHnsXz8RXa0zRY2Qf
 OYlOVzSMMyFFOEWdGJbuyIgJ1VnRSGTCGuFYqhjp4VBD7/8PvBklp8c9+vSof1wXFU4m
 bLPUHQvY107jBoVg9haP+vCvFcaMvSbvOzJSj1TbLfVF3PqPmgpXbZn8CFX6LkpwC2Ga
 k4u7XyOZoVdmlg5sjFjrXivdrgMlRF/iYyLfhJ9d2porBvu6NFruLu5rwUOPApr9yQfQ
 e7VEepnydbwf6/1Qq7dhoOet1ldyvRQaaHdKm8lJT1HRlA1naDu/dDUT0XKM8xrh6dcV
 9Bag==
X-Gm-Message-State: AOAM530x7RE8gtdXEIVEJkOp+8jBaeTZvJL8McGHjGiNfgLZa/0UvqOE
 0X6AagaxJVidMYf1c2fXSm8=
X-Google-Smtp-Source: ABdhPJxPK3j35QfSAo7mL6R8ea+T9nKJPhAXDRb5gFADB7Dh28KPkLC2QE06iDZCYVuqriokcFG7uw==
X-Received: by 2002:a63:d50a:: with SMTP id c10mr256061pgg.217.1606921656204; 
 Wed, 02 Dec 2020 07:07:36 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id p21sm148537pfn.87.2020.12.02.07.07.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Dec 2020 07:07:35 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Date: Wed,  2 Dec 2020 16:07:21 +0100
Message-Id: <20201202150724.31439-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/3] i40e, ice,
 ixgbe: optimize for XDP_REDIRECT in xsk path
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
Cc: netdev@vger.kernel.org, maciejromanfijalkowski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Optimize run_xdp_zc() for the XDP program verdict being XDP_REDIRECT
in the zsk zero-copy path. This path is only used when having AF_XDP
zero-copy on and in that case most packets will be directed to user
space. This provides around 100k extra packets in throughput on my
server when running l2fwd in xdpsock.

Thanks: Magnus

Magnus Karlsson (3):
  i40: optimize for XDP_REDIRECT in xsk path
  ixgbe: optimize for XDP_REDIRECT in xsk path
  ice: optimize for XDP_REDIRECT in xsk path

 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 11 +++++++----
 drivers/net/ethernet/intel/ice/ice_xsk.c     | 12 ++++++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 11 +++++++----
 3 files changed, 22 insertions(+), 12 deletions(-)


base-commit: 6b4f503186b73e3da24c6716c8c7ea903e6b74d4
--
2.29.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
