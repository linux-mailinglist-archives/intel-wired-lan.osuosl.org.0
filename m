Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7491B49086
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 15:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08E8860F16;
	Mon,  8 Sep 2025 13:57:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pRhPbWMa0VN5; Mon,  8 Sep 2025 13:57:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64BBB60B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757339856;
	bh=EJkUOLh0WbhqhNska4X5ZVSMcv6bhaDonRsozzhRMIY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bTYKo61W83/QfbqL92gX8g648lZoO2drviqvSDh8jVtdV3x5Gq06hXkLMyUbfqgn8
	 ztxj1qrEpjXZ15EOsVN7jBijIBIkvimTBY2S4f8qNCmVcPReqRjwERY+fLNE+yioib
	 qr7Zf85X0lfdUHgcXAw7pWv5Su+Kj4fOTYBtnlMZ6Y9sPTf8Yh4aPcPxnOZlnkZl9Z
	 X8Syy2p7uVvNGHAoMvDStpjrNchwJPtpBdU3YWe1b3DUHowU4Yc+ccRbu5tt82h2d2
	 mrHFwK68CMykRPcq0dSJltntmvyuOGkH9N8a0yYCbNKyAMA9ZiJPVb8rQ/mJgMOiiE
	 mfXKP4ib/jRVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64BBB60B50;
	Mon,  8 Sep 2025 13:57:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 66A6C1D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 13:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CAAD84A83
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 13:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2v56MDJ1kTPS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 13:57:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F8C684A3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F8C684A3D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F8C684A3D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 13:57:33 +0000 (UTC)
X-CSE-ConnectionGUID: X6KjWNzvRCmOuo/9DmOUwA==
X-CSE-MsgGUID: i32IwnanQuuIKWnBhpLcvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63424019"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63424019"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 06:57:32 -0700
X-CSE-ConnectionGUID: 9GJkd5LESIyASQ3HHhAeqA==
X-CSE-MsgGUID: wfzFL2ihSE2V0KeQfu/F0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="172676333"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 06:57:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 06:57:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 06:57:31 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.56)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 06:57:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jm4V/Tjme+eZs4+IoN2CStSub239ZIPgbDr//fjEEs93YL1B4jgvKFLaLgG33v8hTZ32F/LpvSXR+szIWzNw75jL6xHa9iSJkN6ljPL+FhTeDaLdLfmJiHP0mBRLYaLC0xUQwL27i4bFs9Zr9Z2W2ZOuyyZEQhQy5Cs8NjNcUuJlo78nRuvVH+ysNlucMIeWkCa0CRigH/lKQiQNoT0fi7nLhrls2ao9dmvo8RsPKJbvQGwr00GFKOpxstLE120rzOvpAvwddAjiLXy/dyCwBq5vyurefOc43FR1oNSGTCv/DNNDsUiKI07eYFavZwode9IwdmhsHNHc1Gf3x+q35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EJkUOLh0WbhqhNska4X5ZVSMcv6bhaDonRsozzhRMIY=;
 b=gOFBYkUYg8XYbslG5I/CoR/6bRx90eL3Fwp2lS+l49W7Sk2Q/pp+W98n5dMhwjgaCd9u3lCgwyolltMPwLsUcGgQz2hQrSgid1dN0PqP1HylZY1HYIOxf/rC+pLrXNs5V53w7xK92S0f5qzzMSCNapaAAYXGiG1SwhNo9J7ppnQ6g3ZAQjIGbBHXAa3nAbbM5na2NOTJo08pLM3q5G8uOTsNbczJOKwifrCC3tAsezkxoQake9gVdBveiEfo3g0LZLBA1qjtmEH5AslTbDVrcJLp8u5PPCjikiI8bDQvcAfxElUhCAysluR+8FKoRYFndudE8BMxKs0Bw+l25XUxXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6145.namprd11.prod.outlook.com (2603:10b6:208:3ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.33; Mon, 8 Sep
 2025 13:57:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 13:57:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-net v2 1/2] ixgbe: initialize aci.lock before it's
 used
Thread-Index: AQHcILXe3VIPArRpykmN4wUszitv/bSJT5Hw
Date: Mon, 8 Sep 2025 13:57:28 +0000
Message-ID: <IA3PR11MB898670EC7D20A2CA809180CAE50CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
 <20250908112629.1938159-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250908112629.1938159-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6145:EE_
x-ms-office365-filtering-correlation-id: 07c61f7c-8113-4015-abaf-08ddeedfa607
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Jl98O+Tx+QsAB2MiAufgmulqd898r41IOZmuFe87Ep5wvz8KyAGodtG+oPsl?=
 =?us-ascii?Q?0/c6XPXLXIL34pDMXVBVP7pOrYjKgdnM/BfRHblDO1be96I+f6BNmTnbzSvW?=
 =?us-ascii?Q?nvOOY4vs3JMZhHO+eWncUU8ZWcz3RFXFqqCh81o7Y29Dy1PdZHBUak30Mz4o?=
 =?us-ascii?Q?MBhWq5DAVzrvQZ8fmgVijzLFJFrUpV1kfopuaiyhzYGIgAQ06pRD85lroqSf?=
 =?us-ascii?Q?LzHcSOmBN6h6WM3xX+b63CgtyGSmhv0SVkPTzTd+ss7giq0TV+yj9X9+yNa3?=
 =?us-ascii?Q?/DrepGtMlgOucYjaL/hrMQQ1B5rYVeUGOsLufL5RwvPRrPk5CjLaD9URO2lh?=
 =?us-ascii?Q?TybK/MLqhNtpjV3uJ+/YwDVoiMNzti3F4yRdCjd+4Jh1WihdiPT7hyL/CepY?=
 =?us-ascii?Q?xc1oaVly/XwJxmofglpD02DuYHKiV317OM4rNZFKeLulUMhBdQQKAIyhc71L?=
 =?us-ascii?Q?Z0JsGapTKgPB1V28QcbldL+u/1QYM2xJe0Z8gretxtq47ITm4xIdyskxLTOR?=
 =?us-ascii?Q?2KT11Ge6NST8CgkRIDF0o47r65w744uU3fZjwGmDU3FuqeOhlKCsE+tqWsNV?=
 =?us-ascii?Q?0CbLWanevcCApJUCpFM3qcS9jfzEGSR1RgGp2o/nnv4r78DJGwUS2r9g3CEt?=
 =?us-ascii?Q?4Donzz7/glWS724hYPhMHhN7dXBfNw4exjV2yDupcektSjsm1ktZ6hcjLxjv?=
 =?us-ascii?Q?WwwgqJZswx6MwRMHebSgx3XNs5pdsljCZlSetFk3p1YY5HmF9A4ea8OEHUhU?=
 =?us-ascii?Q?b4+ZWxUnZmXYiiMNVzz0NxDbJvGICkKVSVezUYHlALJ0XMU4v2PapIIYkFHa?=
 =?us-ascii?Q?eqMXsSFGguOD96YVscEDRMZY3a/ro/pT4RzuaK7OSBSiyVn1ynnxVSDILBTe?=
 =?us-ascii?Q?01mN/XsTRtFtt4ErGp3bRxEkNOlt2GLRcnv9c0oQsbomqbT6MHHykXwNP+Hf?=
 =?us-ascii?Q?+rF8MI9jAE2PbLXSAUbvvPlldE7LfgzxNbRnAxHAsPOMlsmew88ovcnI/dx3?=
 =?us-ascii?Q?wnzlpYpIy2ON3qFcEDfPfWvJDGVymUM8XtwuUhaskr8SQcL4FPFOKrKpKa13?=
 =?us-ascii?Q?apQMRqPYuY4kWZlMEeeCfaOZRsAnfIedOW4dcfEZESfkMv9AK1k7DPVp/F0s?=
 =?us-ascii?Q?crdyCtKIiFhd+ebekP0xR2Td/n7TnlJJPfirqSDcxMB6ieYx13xYIr05zbx2?=
 =?us-ascii?Q?eK0AUUybPnjpTZLxhb4Vn3sdNMU9yfLSEHimNVhMD/MupiEsijxvuGb/ZCF7?=
 =?us-ascii?Q?Qdmu/NQRk5ikJYZ2A7AK1nyikxxGcsLlyzl2e3PC2AzPR+x7HiT+Yv5hubmY?=
 =?us-ascii?Q?+NlnbZZPdRHfrjnbh+h/LediHUP+UjyJQ3KugQVH32g5w3H6KZI3LN/CRs2Q?=
 =?us-ascii?Q?S9xRomV2hFLe1t59RReEm7MEfE8YI5L2awtlOiw5huVm9Dz3ep10a+0GNDIf?=
 =?us-ascii?Q?iZFxHuc8gjdPLovEvgwGVA1JU3IiMYZ7Y4ZzeogbhaAXkpH9lc1LDA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lQ6CqDZ2aq/A+5kiqtnwztvc29RY/Ivi4qcegKNEUSBHgmdqHE0qiKSKrPtO?=
 =?us-ascii?Q?raWVGXtSTfLODKoSWmiMohn1fjYwh8BUUHfwJMaSnDh1XomQTnx5s+TzlCFR?=
 =?us-ascii?Q?Tr7SSNnZbueqFaDfLdyqnnklCx5aXLbnStTv06QZKuOsb88BmT0O7JdsCPV8?=
 =?us-ascii?Q?FcB0dPPsrwBb3lV5yXxm5g7B5zSu5yWVkorx1t/6n7SUJijcOzqWQK3q32vy?=
 =?us-ascii?Q?5TkmILgrisw7+Yay86q2QTUqSsappSk2QMNDBmFElbZgxeRZB0LgFAsy/AtX?=
 =?us-ascii?Q?Zsss7FGiyXuFwNZEODzngNAbIYqq+aZj5WXRD+Wj31DcB8CIizAsuOWEf/8E?=
 =?us-ascii?Q?F6kRlzsA+iqnlM7MUWfq8WwxVHpFm+GO1GT0LDmLLk2uVZ4ksxILWchIyNm5?=
 =?us-ascii?Q?62urJt6eZpc3Q+bEWC7DpyQvcQhsAE9AEI+MzTEcftwzo9QkJRENXfNzmiat?=
 =?us-ascii?Q?Ccwk56Ou5Bu6sk6VY3CzUBEY11DuvayGXn5QnHjqkn8ZRdizRwApAR/cWmIo?=
 =?us-ascii?Q?K03V1yKEM0qP3ys3xhbAu3Lb9n80qdFaxhLHaGUwyr0hhH/06yPdRQzT25gL?=
 =?us-ascii?Q?o2/B3oxDGQemWAI8t8zp31PPDTKMsIKvYHHDP09t3OH8UfHYEVHoc6grdqx8?=
 =?us-ascii?Q?qmnFPeqaM2C2c3fJ0rv/WlPXnUG5mjuiHgj0faotqFRpeRc02FHZpOfD4M8G?=
 =?us-ascii?Q?sGA6Loq6E4YYBwZ279j3Fk1+AoDgtXFOqT9aqT9ZXoB7i4gTLpIzrntH3tJt?=
 =?us-ascii?Q?LC/TdNDK7GxM2wZx8sKfFEdbjrVn+Y8FQRey3oN0vUt6tF650namOAlLb0gd?=
 =?us-ascii?Q?E1iHy7cuGYyjL6uuJbb4/ANUT5J0jqoeQyJrt9fEJgemPxelC+FfnjtcFcO7?=
 =?us-ascii?Q?dSWkR8//NFXKbZS4nDcnM9DDBbeLe/xZunSWdeZAC7FXWCacy8OMMkvNKWuD?=
 =?us-ascii?Q?HO0NRAZGKd+R3RrY1hbexhltvgQfYF3ZzAX2vKf6+ZaeOhpX5fqgAVFH41ws?=
 =?us-ascii?Q?AlEZ5sB+IIrfc5wVbM5PKlLUU8kxPdY20KlcV415RsmWZaGpYdTQGVdZcILy?=
 =?us-ascii?Q?LgxuSLhKxuyYdFbG5Yn0YligBn/zqJ1OiPwFcQwklJqr33fOS9290dvTCwSD?=
 =?us-ascii?Q?GzAh3vlTGwxUpzghrAnA4ioq+Jlp1UuxyvHwiabmksD8luFhI/nh41YnFVBw?=
 =?us-ascii?Q?eJvun4Zl/v5xahfipkn5cqfee0O/VbyeGclS+tTESuSoqxd2vRlMPaiPBjco?=
 =?us-ascii?Q?bAnFFOEOJDffe+wNwFpvybDTRxCKVMZ0hxL+QIS4ZD+MaHlMZZGqlYBkpDoJ?=
 =?us-ascii?Q?+zSjreO4dCHT1idIQIzdMrV3TwaeDsHDSHZirXCBDZRHYzAejAaSIO8rljb/?=
 =?us-ascii?Q?Q/NwHlMQsqPLfxJF9G8fHXpjVp5et+PjLrUldYv6+Gz1Kej70lbV4EK/cBkU?=
 =?us-ascii?Q?mqMsL0oWn93JL41RF4gGH9XZf0M9OI9iL4rBH+h5sOQpbPuJ0NXm5B84lNit?=
 =?us-ascii?Q?OomOvif83hxX4c9gYNQFKZS92RFp/OsDRRyhbDNcdMD97lLyfpYtw/xnuOhb?=
 =?us-ascii?Q?zwbyOUTD/XqeGNxelxq9UrgJP08s50JVYvMv7lGbdbt2PeDVFwKc2zWgAt//?=
 =?us-ascii?Q?yQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07c61f7c-8113-4015-abaf-08ddeedfa607
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 13:57:28.6785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gYqZWeK+ur9VAIL9ZiBLqK1g3smo2WuAhOjExtWuE8mrcy6f70VVA8bfbdUHPVek/vYdSZiA272MyJjXA1KxxBrCcwCocFfyQ1i/5FIIqys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6145
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757339853; x=1788875853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O7zWlpCimAmfc3EhOieyEU7LWrZ1B+wKMpzawS6O5Ng=;
 b=h2bP1CyGB3Ollv3phKH+URbx0EmcN0VlM0B0c1v0utqiwqOoIUdmbrwj
 kgE050IU+yBBk+NEKsXuzclUntzxiMpEuIGxB1gFKVjFxuwQ4Xqx+ixEB
 ayOP/TCMQCXLO3SoQbTtazlUkMS1Jp+KNQ2kc0LMmkUi+HNFu96eLShdd
 YZJZj/CzjkIpURBtLjtRFYOpcknKC7dJweqWkCdO1igvS9ufQqx2o1I6y
 gksG3MGlUuq9+OW+c3pOeoN+EB2t69fI76TdBHvejCBE3W74L2Z2M1LH9
 YUCnv3hoHpZqW0GcS3LWDAwIDG0br/gBCrdG1uuvrGolaEaMQQ7FPKJ+O
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h2bP1CyG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: initialize
 aci.lock before it's used
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



> -----Original Message-----
> From: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Sent: Monday, September 8, 2025 1:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Simon Horman <horms@kernel.org>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [PATCH iwl-net v2 1/2] ixgbe: initialize aci.lock before it's
> used
>=20
> Currently aci.lock is initialized too late. A bunch of ACI callbacks
> using the lock are called prior it's initialized.
>=20
> Commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast
> path") highlights that issue what results in call trace.
>=20
> [    4.092899] DEBUG_LOCKS_WARN_ON(lock->magic !=3D lock)
> [    4.092910] WARNING: CPU: 0 PID: 578 at kernel/locking/mutex.c:154
> mutex_lock+0x6d/0x80
> [    4.098757] Call Trace:
> [    4.098847]  <TASK>
> [    4.098922]  ixgbe_aci_send_cmd+0x8c/0x1e0 [ixgbe]
> [    4.099108]  ? hrtimer_try_to_cancel+0x18/0x110
> [    4.099277]  ixgbe_aci_get_fw_ver+0x52/0xa0 [ixgbe]
> [    4.099460]  ixgbe_check_fw_error+0x1fc/0x2f0 [ixgbe]
> [    4.099650]  ? usleep_range_state+0x69/0xd0
> [    4.099811]  ? usleep_range_state+0x8c/0xd0
> [    4.099964]  ixgbe_probe+0x3b0/0x12d0 [ixgbe]
> [    4.100132]  local_pci_probe+0x43/0xa0
> [    4.100267]  work_for_cpu_fn+0x13/0x20
> [    4.101647]  </TASK>
>=20
> Move aci.lock mutex initialization to ixgbe_sw_init() before any ACI
> command is sent. Along with that move also related SWFW semaphore in
> order to reduce size of ixgbe_probe() and that way all locks are
> initialized in ixgbe_sw_init().
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 03d31e5b131d..18cae81dc794 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6801,6 +6801,13 @@ static int ixgbe_sw_init(struct ixgbe_adapter
> *adapter,
>  		break;
>  	}
>=20
> +	/* Make sure the SWFW semaphore is in a valid state */
> +	if (hw->mac.ops.init_swfw_sync)
> +		hw->mac.ops.init_swfw_sync(hw);
> +
> +	if (hw->mac.type =3D=3D ixgbe_mac_e610)
> +		mutex_init(&hw->aci.lock);
> +
>  #ifdef IXGBE_FCOE
>  	/* FCoE support exists, always init the FCoE lock */
>  	spin_lock_init(&adapter->fcoe.lock);
> @@ -11473,10 +11480,6 @@ static int ixgbe_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	if (err)
>  		goto err_sw_init;
>=20
> -	/* Make sure the SWFW semaphore is in a valid state */
> -	if (hw->mac.ops.init_swfw_sync)
> -		hw->mac.ops.init_swfw_sync(hw);
> -
>  	if (ixgbe_check_fw_error(adapter))
>  		return ixgbe_recovery_probe(adapter);
>=20
> @@ -11680,8 +11683,6 @@ static int ixgbe_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	ether_addr_copy(hw->mac.addr, hw->mac.perm_addr);
>  	ixgbe_mac_set_default_filter(adapter);
>=20
> -	if (hw->mac.type =3D=3D ixgbe_mac_e610)
> -		mutex_init(&hw->aci.lock);
>  	timer_setup(&adapter->service_timer, ixgbe_service_timer, 0);
>=20
>  	if (ixgbe_removed(hw->hw_addr)) {
> @@ -11837,9 +11838,9 @@ static int ixgbe_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	devl_unlock(adapter->devlink);
>  	ixgbe_release_hw_control(adapter);
>  	ixgbe_clear_interrupt_scheme(adapter);
> +err_sw_init:
>  	if (hw->mac.type =3D=3D ixgbe_mac_e610)
>  		mutex_destroy(&adapter->hw.aci.lock);
> -err_sw_init:
>  	ixgbe_disable_sriov(adapter);
>  	adapter->flags2 &=3D ~IXGBE_FLAG2_SEARCH_FOR_SFP;
>  	iounmap(adapter->io_addr);
> --
> 2.31.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
