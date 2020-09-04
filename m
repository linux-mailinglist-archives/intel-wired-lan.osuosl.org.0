Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B3B25E32C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 23:07:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6016E8756D;
	Fri,  4 Sep 2020 21:07:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJmarcll4bZ2; Fri,  4 Sep 2020 21:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAA1C87572;
	Fri,  4 Sep 2020 21:07:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1753A1BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 21:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9FF0F2E1F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 21:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pxt-ypld1fPM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 21:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 448952035E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 21:07:02 +0000 (UTC)
IronPort-SDR: 6jG7KR66l5+SGxrzRGxWaBH7mUVWCI4wBpAib+oefBC+ILLoA3SH5TBqR9h10S2c+vSdoxtrSq
 nJHYbqQzihfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="157824278"
X-IronPort-AV: E=Sophos;i="5.76,391,1592895600"; d="scan'208";a="157824278"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 14:07:01 -0700
IronPort-SDR: dy4s/qqLBWe+w9YdQeys0XRPJg1Crpx/iQ+vAuhiF8cMdtFxX/IxJEwZLyFa/Xgj4TQb1J6Z+P
 EGLjZKIFYEJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,391,1592895600"; d="scan'208";a="332290186"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2020 14:07:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 14:07:01 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 14:07:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.127]) with mapi id 14.03.0439.000;
 Fri, 4 Sep 2020 14:07:00 -0700
From: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net v1] intel-ethernet: make W=1 build cleanly
Thread-Index: AQHWgvsq8htXpnKBWUuMCVfcN3YwBalY+J0Q
Date: Fri, 4 Sep 2020 21:06:59 +0000
Message-ID: <253CF818969A9240AB2054BF91F2C2BC99DF6CE8@ORSMSX101.amr.corp.intel.com>
References: <20200904203707.2248877-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200904203707.2248877-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v1] intel-ethernet: make W=1 build
 cleanly
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

Ignore this one please, mistargeted this at net.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
