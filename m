Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73476522E5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 10:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC31683342;
	Wed, 11 May 2022 08:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6p_zpXyaFV1E; Wed, 11 May 2022 08:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 069E883366;
	Wed, 11 May 2022 08:29:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF68A1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 08:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCC696107B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 08:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3O8guwB5sky for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 08:29:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 374ED61079
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 08:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652257765; x=1683793765;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BcQ4fmKkDOekqNJiCyJBBmS/7tn/WKb0EHXfvDKikfU=;
 b=Yzj85/jxCKO3x4BGEUdmIFj2FSLk/eSox4dQex6oYR9N9iri7vz2GX4p
 GrkdPYHl0RAR1GE86pXXId+6eOOHFL93ZzfvlQ+wrNCExpY9tfWFjXH9P
 STgRq+mggGChNBgArRAb8G351/MMZpOemPmwyEdQTQcUEp4dENDOEzaCD
 bF2sitXGJrL0+MUltkSCALbZAsrFrWrI70e07CedidR3xdvG61Y+IzdcD
 fmQpKidLjgi0Pn9CA66xwS/3JSO53g1TMINzhxXg8Xh4EEz17atCR4Vcq
 QbFNy8H6XalMAVfYdKn7SvHJB6cWsu1UkHmNq8QFbkx/V63xqvUv3ZnzF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="257173994"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="257173994"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 01:29:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="566072986"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 01:29:23 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 May 2022 10:26:26 +0200
Message-Id: <20220511082626.9716-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.35.0.rc0
In-Reply-To: <20220316192710.9947-1-jeffd@silicom-usa.com>
References: <20220316192710.9947-1-jeffd@silicom-usa.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome link
 partners for X550 SFI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff,

This patch has been tested by validation team and appears to be working correctly.
ACK, but first take a stance on the comment form Tony

Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
