Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCQRA5BZgGns6wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 09:00:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C455AC96EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 09:00:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3640E812D4;
	Mon,  2 Feb 2026 08:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9RnGln1rC-Wq; Mon,  2 Feb 2026 08:00:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 942F48130E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770019212;
	bh=wKAADmoOO8SQkeUJYqt6RpXuPcp1cMlYFxBKvpQUSbQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WHXS9nSMKh+P1pi/LRQObGzcYVmsyU6zPCLxn2ny66dh5b5o29WOX9wfrfHAcy+am
	 15WGnzuvQ/zwjpGsN6cNuu1JTxQQzCk1C3qUXUkbnYrSmf70dVQ18YRx8KY/CsysVH
	 CalZr7qnjmOZyY1R5pXTqUuMcm4QG2e5+T6V/FXZjxQToOd8qWyH6C9np5QW/NuEph
	 5rtTFXW/GulB/R1CkKSGxmdxSNViWkty3xxFDaHT/A2htjcsGFpvLRIUSEWlmthi+S
	 C6mBjCHUylCjNAGTGtWLzk+gsBzDeyW7+nEahUcR28cLVvJJBB7Gi9FEPJHxCSs1wQ
	 /ZOZ1rx9+fKSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 942F48130E;
	Mon,  2 Feb 2026 08:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 03453149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 08:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6C3D408DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 08:00:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFEeBPZ35ntK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 08:00:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CEF2B408B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEF2B408B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEF2B408B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 08:00:03 +0000 (UTC)
X-CSE-ConnectionGUID: 8/mwHJdLQ06j0CuqEkCasw==
X-CSE-MsgGUID: KwgbIrETSdqcgtIBe/I9+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="88751437"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="88751437"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:00:03 -0800
X-CSE-ConnectionGUID: qQ/3epwFSkqFoPcxflS6SA==
X-CSE-MsgGUID: sVZRU/S4Tsm/vCqVd1kydA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="213550943"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:00:02 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:00:02 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:00:02 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:00:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A5SQCDwMuyQ4LMldNCL3BOjVXa/VkodlKzlLazt3N3kiykHliGVsWRnEHizIrIX9etsIAwr5HvT9nthADcw2AcrrI85RYleRpLg4YKxCidf3CGC363l3f9E+QYNQdUr8Af/NPikNy4/SIPWG8Yw5ycD69aZ7IoF3vaFPFp8tH1z84ZDm5GcAzHi3g70p/y1OPuRH1B1Y/lHWl3OdH+u2zi3rY18AN8ogppqTqYVlFXL/9VPTeI887PtK3/JkRUN6aMNrzZI9XsXECkzEj3KF5j0mv170AVzU8JIXAEinN2xK3TKvVSD62MkXwc/+QRrv4W2LRE/WyXGettY9NvcxXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wKAADmoOO8SQkeUJYqt6RpXuPcp1cMlYFxBKvpQUSbQ=;
 b=vaNXE4YErBTgkaiPo8K2jtfkK6RCPBoEUK+OkGg9bBZHgBBgcRz2eD9h/M30Xy4le36SlVLfu/u4xnIn2IOi7eHJzE/PMdnvmh1Eqc7G2bKxQKenirHjvmladC9amb2ZGmEPEltFzQUXWr7NdkJks8+Jo57HPLnfp3emxMN9OkwvOHJX79GsCNdMWjRMvrHg2ndKHqGDKU60zztNi+nzSH+VQOuZtRDlweP5zkoPSemn71MlfBMPiJXtDLY59mxJ4aN3dyz+uxvPM2OrTCWFwXXzd2Ft0lDysyJNPhN/W28A3xaoAwwrJDTu3tpbBzF9MhybPohvtSi4NFFWFU6ZMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPFC3F0DB79B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f4a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 07:59:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 07:59:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, Simon Horman <horms@kernel.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [PATCH v2 iwl-next 1/3] igc: prepare for RSS key get/set support
Thread-Index: AQHcks8Hemhp0uzvwkyT/L2MZ2BUvLVvDdXg
Date: Mon, 2 Feb 2026 07:59:55 +0000
Message-ID: <IA3PR11MB89866EDA0E5756FBE635AF8DE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260131163037.88108-1-kohei@enjuk.jp>
 <20260131163037.88108-2-kohei@enjuk.jp>
In-Reply-To: <20260131163037.88108-2-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPFC3F0DB79B:EE_
x-ms-office365-filtering-correlation-id: c45cc436-681e-4c63-19a0-08de62310d6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Z3hzx9UxKh8Y2SvBa6F1eMMdhnJJRskFYcsnH4amNJJzMVqA46vFArUvQ7ye?=
 =?us-ascii?Q?T25aDFYHW2fB3wOnf8YWUY/3MQnztKZm3eUhYgWesuNX5XC+C6SI/YWVFrho?=
 =?us-ascii?Q?8WMbHOYNw1vUoDji8rDXVqK25Atu20raxy9gRRMomqqdQMfjVAWgRu0P9qW9?=
 =?us-ascii?Q?RwnGNATW15PVLOSLLUyr9u8Z6BWLbgp5Gw2Qzd3TdvErg1enSmJuIHr0gq2Z?=
 =?us-ascii?Q?WyAHzZNIj2FeqTF3p02utuZSxSg7zOnuZmhjXtexD3SomCPHvB653f7R/xGz?=
 =?us-ascii?Q?zkchdsi9Q+fS9GLdXlZHRqL78APF/n7kaPs39k7+xOYbKkIh7P0Bnl2KqLad?=
 =?us-ascii?Q?Ac6Z8mVNc/NAX060ToPFSjHWodV6EtpM46BHDqY+ZG5xh2HKYSWnkPUhHFjS?=
 =?us-ascii?Q?74EOnkRpJxMp7f30w/Cpfg62nFBwGvGFQw5+Ks3uwOLhGWUBgFwkkRE9WP/J?=
 =?us-ascii?Q?JJ0cDCiU6ad6Bbc8SVH6D1zN8VadkG6tG2iLCgWfEV9BvibaBe3lvQPe2fWd?=
 =?us-ascii?Q?AsyyF1pgLEWLAuwWiP3sQa7zh5sOHYbCL6fR0MLX4V3n1cIDeJ2IvUi5wFXC?=
 =?us-ascii?Q?H8/mSH8T3O/08DheNxRSRWsu8Vyv4/zsF1IfObavyTZjeDPW+t5dLWMx4Ysm?=
 =?us-ascii?Q?t7sySPJPs6XAVL5kiEa+gP1uZi4qqevUw36KddLx6SIoPu6vIz++pRZs7Y8o?=
 =?us-ascii?Q?/NVSbf5qnttzI5Sg7S4/Ycya8d7pmsbE2MFVu80TdzEA/4QPqDETo1l2fMLX?=
 =?us-ascii?Q?TMYoItfQ/OzuSf7BgfIiZma2FWnMNVjwT3pBC1QWF+Fcfv5/5WQy+pTCZPQW?=
 =?us-ascii?Q?NCop7R/sII2mokU6QFO+pVz0XVVBOMCmq5ivZbwtexpoXxySkvAL4r8DyCu2?=
 =?us-ascii?Q?Te/x3sfVPNU4xqpwqvgunIl64PLfjWMA0JBkakOIW4kyEcFV55CdCbpPu7vq?=
 =?us-ascii?Q?gbo/u9TQ5qKX56+uDrZU3yyqR9sHAtMwX0rqaa7F1y8nngy03XrwJqY6A3aR?=
 =?us-ascii?Q?515YR3BH0NqYkw1SRWKZBlBo92gYzjrRWqzJir+SFE4c0F6tb1PdM+/3OCs8?=
 =?us-ascii?Q?VK2qTQ6cRgXzXT+FUYfxEJk2wl9O/XaOb0wbfE6x9O1NsHCkt+mSGcYaJxx8?=
 =?us-ascii?Q?0pu9Fmzbk1aCApQlI+OVUH0ZkdTXgl9wfD3YwfLWmXKf7w4X5D2bvShlyOA2?=
 =?us-ascii?Q?4T/XaMG/30uX8fz4f/IFoeuzTRtTftzL+3nsAs7C9CEaPzIcgLb2Q1OnT7UQ?=
 =?us-ascii?Q?VOXuKhRwWPSf+SnnB4quRNciCdMN+y/riYKDboQVnILF5bwWvQvO0D38cOf9?=
 =?us-ascii?Q?RqO8EEInVZFUdDY4dQQqK2GrgKKHhragjHxWQvPAU9mIwJbiW1A1RIsNNJOv?=
 =?us-ascii?Q?UIGkudKD1NvNjAbqBrq7xG+0VomN3S+qu/Rl3sfFlLl2FoLUFFwkgJjMvGpC?=
 =?us-ascii?Q?FHoZu3ATviq0lJ/SkGtMouIVfcL6PgoBO4hhP/B+t0dO9JqDnqKN/OrV7zbz?=
 =?us-ascii?Q?Vyn2Ub1I+eAc2WSuPgu48rBVOrZSQrrHCl6iiWESWguq8sHDFh10ljiDYWZE?=
 =?us-ascii?Q?b2MhzZ9a/NQH5attnM5btY4FahYXZEw2BHkWjN8BrM6Rd5r+WGuPwFv04hHb?=
 =?us-ascii?Q?sed6xFrre+BOgVcBLXi5Qcc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zAWk6vbN1Vu8L6SOq3jZokxvywcUvMyOGVPz7qPtGVMowCxehBoLzdsHbS7F?=
 =?us-ascii?Q?xjG39IukvoEN+gDau8KfcMl3DZDvVMKLXFLVgVDUf5xa65+lwYAVAmiYOXft?=
 =?us-ascii?Q?ypQrEyxyQuzWZHqkFlIGGW8DSlBwIFtkY3CA336abka1aEBOfPH4KSbBfD/F?=
 =?us-ascii?Q?2+T3Osc7vQRTiqrd78ytQRnIE7UhYv3JsJQjo0QV/ET+jt0Q/1Iy68uv8IRh?=
 =?us-ascii?Q?JBS3RMVUnEadpsGNLzuuWvNEBaDPaKJ6euSlTQI2Bpfg+SFeRYQvQLYyknbS?=
 =?us-ascii?Q?Iy9lOr2vdWK+ipCCPd82VBbVhhBDs2PCkRoOF4Lk/Q/FCFMZf7rMe8Ae9NnQ?=
 =?us-ascii?Q?5aS0AjTChOZQ5QnSNmfFXacMR2EJ3nkeOIEQWYp1Rhnraw4BKC8yEyeA51Y8?=
 =?us-ascii?Q?w5Mj8S22h4fFvE6/mqdwxJRDHZ7lK3q/rxtbQ7XE/Y7j40dgo+fG51yVVTNg?=
 =?us-ascii?Q?uWX9P/soq0Y7nq/5QN+S3oW2icZ32RCxdbsU9eTeJrNJ3kYBW8p4faOe4mLk?=
 =?us-ascii?Q?Eq9UHroXziaETLzN3xBYq1gqP71cHSxMiJQzhKIWdWN7bHhOOU9gULckjEEG?=
 =?us-ascii?Q?CZUKKnHem42lrEftd3S/FgpYynKHjqZFRTU1A+95LU5UgoaH1DSYFfIQiEok?=
 =?us-ascii?Q?1yETPE+gILLy0ZslByIb4EYWXlN+NPSn5BJnQS2wjhpWr8Hw+OrC/iuZaiu7?=
 =?us-ascii?Q?mcfuHAnF7IMiDrgJfmOK5hGv6HE18RXdl7dakHxcZhlu45/rnO+lWqyQVLhb?=
 =?us-ascii?Q?IOEoKb6z8ZyJCRBjALry1UFhqq9bvw4KQ4s/bjt0XxZotnS7JParYWOohLjw?=
 =?us-ascii?Q?NVznQtReuWRkZ0EimQiKxmhz734PUnJHxgS2bZVOvJlrYeElyq30CYoO2Srp?=
 =?us-ascii?Q?VwmxnYycHEAK14Ra/OJxSGg+gp8fuxV2EwCUddWFvlCaOK/yN/0df6pItp8R?=
 =?us-ascii?Q?lDcKtyKXLWNRog5lxhM7pXM4wtvcI5jHmfSXt0Dh+fdMgurhppf9i2lvB2Eg?=
 =?us-ascii?Q?A/XgmiwQ1crkZTwRquGqIoq+cn4KHBxmLjq29eNzT9AH7v5Ef9RO5taUMu46?=
 =?us-ascii?Q?+wEAdzAl0/SNRC/SHkBabQT/Br4MElpsluGQu+xw/W/BTqoQignXdGZ8m4oZ?=
 =?us-ascii?Q?pfhOPlpYqwD5lSzdiGetiIrZg2prMPn0GZFftWeg+g8ywBKIexVGhkHdww/L?=
 =?us-ascii?Q?Ysesdx7s0bX9rVVPge5pjkA7cDxjo8XvunSDlBVHR0CHTxINRmMISi4EWrYF?=
 =?us-ascii?Q?INezqKBHigV186wEltvqfWJCZyU6oclaN4pktGX5f4Om3qcuDe26eDHGVHg7?=
 =?us-ascii?Q?9b/aHZx4Ft7PcdyGIbdr+rIc2V1qN+8bk+OCARmmwrfWgXRCwjwDNJaYSATy?=
 =?us-ascii?Q?PKq5fen5XcFHVDSQpUph8Nh2mU5l/LQAzGzsRbgIU7i/MjQEqlFmPO1UoVr2?=
 =?us-ascii?Q?N6IRZ5w5R4y2CxYCmiaj42xQpUwJCjR9Wcm/DJKDrbr34kNuKiVT7hbRcJ2F?=
 =?us-ascii?Q?7jzuVaHHWDHC2ss0nBDxnx/01oPHpzca13x99kNHaG5rVyzYOChF27JS4Yil?=
 =?us-ascii?Q?FhKspcrk7bXG4NrXatxEPOCiXAbXeiFpyh2bzkx4VzmltmBA2JV+bzX+S/JC?=
 =?us-ascii?Q?UajdN5CoKCZ8/xD0segOlUMYR6h5ZksJgIe9pY3yqJtpGkXP2SYDi0xUVBDc?=
 =?us-ascii?Q?u693qLGEuafgX0eDkzffxtzM/ytwdZHYpaB8LIQq2hH/8+05q06iQyIYo22M?=
 =?us-ascii?Q?5QwjE9omog=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45cc436-681e-4c63-19a0-08de62310d6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 07:59:55.1064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tAZhN1viiFOBLOKLEaSwmVVxHdUWU8UEkcbeM9rqP6k0oBno8aeNZS0klN4jyhqiLz4cCZYrPUNUottQDEQHvml/c7hRKpwKbiS7VLH19SE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFC3F0DB79B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770019204; x=1801555204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pgjBlU+shqbz0J3/Bh4WCf9yKNrX7iXlewvLe+dR11M=;
 b=gtP0n92Jjt2Xu9ZpBxcoRsJ8OeI5SKHthUVoTKN8BrbiBrhAP9BDGcHH
 yAXXaYkc4xDoqYWmQqV6wGWchuJ0VwKgL5fsCL6Wxf4oRHldRF9uTdBJf
 YcSkj/KT1CYXZoQeeX2BpHzcN8LQpjTjuGD5tYBPj9Nw+w0lxCWSX14df
 fKWQUDm35WJgiK2ljCbBLTFmZQv6QgQSaWzsAn+Wb5Ci2VX3r1iC7StPW
 jEdaDuxXKqJDEsesSr/TXNMSp3xrj5Edyqnz/D8gactSqAxWGLn/cNuHE
 6JLg5nCfWYFcpPo9z/PQV+nmV4uqkXJgFE5CMcdqrSTwr/jfCXYflZqIs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gtP0n92J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: prepare for RSS
 key get/set support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:vitaly.lifshits@intel.com,m:horms@kernel.org,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,osuosl.org:email,osuosl.org:dkim,davemloft.net:email,enjuk.jp:email]
X-Rspamd-Queue-Id: C455AC96EB
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kohei Enju <kohei@enjuk.jp>
> Sent: Saturday, January 31, 2026 5:30 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>; Simon Horman <horms@kernel.org>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
> kohei.enju@gmail.com; Kohei Enju <kohei@enjuk.jp>
> Subject: [PATCH v2 iwl-next 1/3] igc: prepare for RSS key get/set
> support
>=20
> Store the RSS key inside struct igc_adapter and introduce the
> igc_write_rss_key() helper function. This allows the driver to program
> the RSSRK registers using a persistent RSS key, instead of using a
> stack-local buffer in igc_setup_mrqc().
>=20
> This is a preparation patch for adding RSS key get/set support in
> subsequent changes, and no functional change is intended in this
> patch.
>=20
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  3 +++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 20
> ++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |  8 ++++----
>  3 files changed, 27 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index a427f05814c1..dd159397d191 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -30,6 +30,7 @@ void igc_ethtool_set_ops(struct net_device *);
>=20
>  #define MAX_ETYPE_FILTER		8
>  #define IGC_RETA_SIZE			128
> +#define IGC_RSS_KEY_SIZE		40
>=20
>  /* SDP support */
>  #define IGC_N_EXTTS	2
> @@ -302,6 +303,7 @@ struct igc_adapter {
>  	unsigned int nfc_rule_count;
>=20
>  	u8 rss_indir_tbl[IGC_RETA_SIZE];
> +	u8 rss_key[IGC_RSS_KEY_SIZE];
>=20
>  	unsigned long link_check_timeout;
>  	struct igc_info ei;
> @@ -360,6 +362,7 @@ unsigned int igc_get_max_rss_queues(struct
> igc_adapter *adapter);  void igc_set_flag_queue_pairs(struct
> igc_adapter *adapter,
>  			      const u32 max_rss_queues);
>  int igc_reinit_queues(struct igc_adapter *adapter);
> +void igc_write_rss_key(struct igc_adapter *adapter);
>  void igc_write_rss_indir_tbl(struct igc_adapter *adapter);  bool
> igc_has_link(struct igc_adapter *adapter);  void igc_reset(struct
> igc_adapter *adapter); diff --git
> a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 3172cdbca9cc..1b4075e7e8e6 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
I think here should be added include?

#include <linux/unaligned.h> /* for get_unaligned_le32() */

Isn't it?

> @@ -1460,6 +1460,26 @@ static int igc_ethtool_set_rxnfc(struct
> net_device *dev,
>  	}
>  }
>=20
> +/**
> + * igc_write_rss_key - Program the RSS key into device registers
> + * @adapter: board private structure
> + *
> + * Write the RSS key stored in adapter->rss_key to the IGC_RSSRK
> registers.
> + * Each 32-bit chunk of the key is read using get_unaligned_le32()
> and
> +written
> + * to the appropriate register.
> + */
> +void igc_write_rss_key(struct igc_adapter *adapter) {
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u32 val;
> +	int i;
> +
> +	for (i =3D 0; i < IGC_RSS_KEY_SIZE / 4; i++) {
> +		val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> +		wr32(IGC_RSSRK(i), val);
> +	}
> +}
> +

...

> --
> 2.51.0

