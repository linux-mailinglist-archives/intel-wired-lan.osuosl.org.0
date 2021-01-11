Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F952F1C48
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jan 2021 18:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEB6286776;
	Mon, 11 Jan 2021 17:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OUMnQEjtvFUM; Mon, 11 Jan 2021 17:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BED586796;
	Mon, 11 Jan 2021 17:26:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 641F91BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 17:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D28786776
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 17:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gwnkyrkb1VcO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jan 2021 17:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B775386769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jan 2021 17:24:04 +0000 (UTC)
IronPort-SDR: 3Me/M+yyF9Lr7mrR8bsM/vufQuS/F/jaoQ/oST1c7UbNtnIgSrxWTuO45rE1/DBMB6ccfcmeaQ
 cR/b8nlQuNnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165580908"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="165580908"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 09:24:03 -0800
IronPort-SDR: ZzE6wAc8X4j0vb0vRJbpG/9Ykuww8aQnCAFNjUaIw12l5TxnCe+iv7gnSkADl8/v3pEGsD0QMZ
 Hb5J0OSSJDMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="464227154"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2021 09:24:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 09:24:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 09:24:02 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Mon, 11 Jan 2021 09:24:02 -0800
From: "Kleen, Andi" <andi.kleen@intel.com>
To: Robert Buhren <robert.buhren@sect.tu-berlin.de>, "Kirill A. Shutemov"
 <kirill.shutemov@linux.intel.com>, "Radev, Martin"
 <martin.radev@aisec.fraunhofer.de>
Thread-Topic: Security issue with vmxnet3 and e100 for AMD SEV(-SNP) / Intel
 TDX
Thread-Index: AQHW6B1Sq0leUKGYv0+6SEmL25DAQaoi+P8A//+zpdA=
Date: Mon, 11 Jan 2021 17:24:02 +0000
Message-ID: <719473c603774460970f93d926530b87@intel.com>
References: <AM7P194MB0900E443CEBD6EF2EE37325ED9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
 <AM7P194MB09004AD790C5C85EDCB42323D9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
 <20210111132602.bcd5hmtoqe4dcjwp@black.fi.intel.com>
 <749d3ace-877f-1c5c-bb00-ffcb8394f36a@sect.tu-berlin.de>
In-Reply-To: <749d3ace-877f-1c5c-bb00-ffcb8394f36a@sect.tu-berlin.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Jan 2021 17:26:45 +0000
Subject: Re: [Intel-wired-lan] Security issue with vmxnet3 and e100 for AMD
 SEV(-SNP) / Intel TDX
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
Cc: "martin.b.radev@gmail.com" <martin.b.radev@gmail.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "sathyanarayanan.kuppuswamy@linux.intel.com"
 <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "file@sect.tu-berlin.de" <file@sect.tu-berlin.de>,
 "doshir@vmware.com" <doshir@vmware.com>,
 "pv-drivers@vmware.com" <pv-drivers@vmware.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "brijesh.singh@amd.com" <brijesh.singh@amd.com>, "Banse,
 Christian" <christian.banse@aisec.fraunhofer.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Morbitzer, Mathias" <mathias.morbitzer@aisec.fraunhofer.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>Let us know if you are interested in our fuzzing/static analysis setup.
>We're planning to submit a paper soon and we will publish the source >code along with the paper.

We already have an own static analysis/fuzzing frame work, but it's not released yet.

-Andi


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
