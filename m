Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 450E9CB4268
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 23:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4B5F8446A;
	Wed, 10 Dec 2025 22:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s7pY6JkGU9-i; Wed, 10 Dec 2025 22:36:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28CC28440D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765406179;
	bh=/wv5OgRUKs32BWNIZpTGojmCbsJg0toJWUA7xvO+xKw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CAvTN2Q2rYLm4IZB0/CIhMWVvLo9UgJpr/Wta2X6iAvlC+ipGunpLcr0OW5gtimqk
	 uLWNWp05K64GvqNik/TafOIaxVLb1VtAD9/dVSDvQgLrWZOdrasoSCUMBgSJTz3Km0
	 HJ9+cCrCmTftKE/8iDwHKi0jvTNQPMxwF6m5II/tXWx4BEDQhCiTUiIwsLuy08dHNe
	 RFSIv2P2P6S2kNFpDixlaN6MZUeAdr3fPohirsCF9AH1fJmg+MBhwbbPoMxpG8PnJJ
	 tmE4DNmCaNasYGkYTt1JzA0JMvK2LbUjJtm2sBwZr/5eYDWWsuKM5oo3/Y81/4dhbB
	 3t90xefT1A9/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28CC28440D;
	Wed, 10 Dec 2025 22:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AE586237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB497404C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xQuaJjWloTOU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 22:36:17 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 10 Dec 2025 22:36:16 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 989304002A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 989304002A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 989304002A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:36:16 +0000 (UTC)
X-CSE-ConnectionGUID: hcjDQTrRTxuom/A5yuOF6Q==
X-CSE-MsgGUID: DTi3qI22TPmfUM3a7LeV5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="84792755"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="84792755"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:08 -0800
X-CSE-ConnectionGUID: sDUSlNZ+RVC4VQuJQUeoNw==
X-CSE-MsgGUID: XaOwWSIQQG+KlQPNM2MnKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196916451"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:09 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 14:29:08 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T/SW8whDAjGz+M8usEmkgOmujDXlwu8bRgOSJ+/R883K2A3KTgnOTIRKcVbmOOV23FBdlr+o8P3iVJbC7x3CMRGgYqz3lgvIT9ZYyiWUOwvPoreorbXwDW3fWkTfoyokUL5TP8FDVGjFddh5hYg4cOucfbM90y7WnGrVq7h55IdXdIbzejMe7kBDTHkCNsGRDX16+xmWh7+moHKXZAFfwQkQ5vsJXNo9qQ+5CQdRUcctLf9eHMNKWjwjzCwMHiESnitslTlbxckhU4FGnSAl8VmUzMufRauHchf8URWJEePhmPEqrebK6l9SH9MWRrUAnvpPc7QZIbqVRNlFB4UnuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/wv5OgRUKs32BWNIZpTGojmCbsJg0toJWUA7xvO+xKw=;
 b=XJQdL39Iq4OEbCEtcjEaZTxTYrQW1FuLI/S9zIEvuZ9VgJuC2rQGlUV45qI+zSt8phK2+rFLBjGt9AR1F9SHdW/Q3Y3KvJ7deBg827thEx7b9KJk8mj8iwV0940pxwoT/J2+XFNYFjfZW2zHdTUnca64ijNfTLEYgWLefWtYTULGZUYHUl8chZ10ij29Hw9+5HgiytDDwPYeh8giAJ7IO0OtUod9PoYpbT0se+CykfnkXhZlsVFtOUDTse/iHfd2rtwda0O0E0lPFqqGc8wrtvmUjf6A3uV8m5FFkWN30B8ruI0tPjcumAUf2juNtZrPfuZN3ZJP46meFYyyrRS83Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 22:28:59 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 22:28:58 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>, 
 "iamvivekkumar@google.com" <iamvivekkumar@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 3/5] idpf: fix memory leak
 in idpf_vport_rel()
Thread-Index: AQHcWnyLKwKQQO38uUa7sxI0CUnzNbUbifIQ
Date: Wed, 10 Dec 2025 22:28:58 +0000
Message-ID: <SJ1PR11MB629716B4D0C73870656D6E229BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-4-emil.s.tantilov@intel.com>
In-Reply-To: <20251121001218.4565-4-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6681:EE_
x-ms-office365-filtering-correlation-id: ab0d0e35-ab84-4631-9602-08de383b833f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?FHS/ez90a+RLFH8tWMcB0DMXKK1HblAPjXXqi7mjtXgcuCNpg12/a30QXu6h?=
 =?us-ascii?Q?62JFH2KgOj5e0gTFBm+BhrogZ4vHmhx+LI/VXIsdC+mEzeli8SViI9XZMI13?=
 =?us-ascii?Q?sXqPC6BhttHyFirK+yxppXGQTkHFHB7jWNQDDaJs9AU6IYolMGCfmz0z6Via?=
 =?us-ascii?Q?avGYWJFJds83gzP2gk2grNH+aVs0A168qMmNwFioncyIjCVqTPXoGDnuQVXR?=
 =?us-ascii?Q?fuXsqEBEEWmy73uzlfQr1M17KFakODtrn2o2W6G4qv+6PRvreU3jZ3naUiVD?=
 =?us-ascii?Q?eTco0SMUPH6885+NG/dpRed6yiEe2BAA0D/vfTMHcU0ngr1vwySn2LATXlDc?=
 =?us-ascii?Q?qf5lcFHdJIwavAl5/Vx3NJWSILubCipxzVfqt0lgckYHW4x1WKu+78jwBI1s?=
 =?us-ascii?Q?Vh2VOdefjg7t5/V4ISxluJAdB9k0bRJbZ0zAJfFAqKoiYX4GcLZbhrq3vzEO?=
 =?us-ascii?Q?b2o5Bi6uikZEcpEJQjGDPXtg3nh/FT4wyzs12UoNdC6dP7Kb2rFP9Vl6lpyp?=
 =?us-ascii?Q?0q44n7BVjXXwy+aDgFilJKwseegFNpsj+HcmeYNdBs20ykYWeJDF5SVwmcNR?=
 =?us-ascii?Q?oyhIY3VUAC1/n2Eh3YWezfDEsnvoFNNaRrCRnRccjUgNQ6FcMPaqJ9l871qA?=
 =?us-ascii?Q?yOIGMUOtQh4AXvuPqwJEQaymPcR711t9veVp8Ca8KcirYkvae/d4JRXOqrrB?=
 =?us-ascii?Q?vwhuN7vskUpWnVu3nMCXMUazvqtpAEYRLtPt6nzb4LZ6enx2jknvS2R+Y5cN?=
 =?us-ascii?Q?DbSDZccLWvMjChm/jwg7qOKvlxoC0Ry1VPeVVhSnCWLKjPTA3skRg/zBZajx?=
 =?us-ascii?Q?64yeKTN24xcJSlgQsraWVDwqfgh8vR9amLx7jZ/6XWok5jEHqA5dg5sJrc/E?=
 =?us-ascii?Q?Nw8+JmfeagW0d5BECQfv/CP7HOU/6s194rqMaYy3RMMCok/djeEZ+brJIBps?=
 =?us-ascii?Q?xBwaT24AWNSwg7RFRy8hq0MHoQP2sEgYawRb+HPna8mPIEvRtsdX80w/c85f?=
 =?us-ascii?Q?tbG5IdU5VCqp+qmELEpOOJmE5dHobT6A9J6+evSpkOPwc9cKyh7YgxzTQNa+?=
 =?us-ascii?Q?PSHIawy+b1YjmD5atjaprJohtA+50Ic61vXNHZJEmuLwL//TCCD70IfQRscC?=
 =?us-ascii?Q?Y8bv47UKC5rni1Hu4VDSshH0lxnS+R4Y21u1+WjxWnlFYEJfEHLjkuN05Tf5?=
 =?us-ascii?Q?RHH6KovJT6U6K0L3vWmDW1PPK2AB2Q6H/0dySxYnszEf4KjQ9L0gGCi64s3K?=
 =?us-ascii?Q?0iLL8DC+23EB1wUMqaqW8HcOa/DzMETKul6tCeXWg03hdfhzYFmazG0pi9/K?=
 =?us-ascii?Q?b3J8CDbUciXOk68MCU5j4TA0spOrsaqn0Km/PjjntYgzxh/EmkIXYA0gRpKn?=
 =?us-ascii?Q?faNYRNBvxzegm0hvw+rE5n7yTccfcmakbR3d7tpuq/zs8CsRLX+rucfX9sz6?=
 =?us-ascii?Q?iwJDqVYbOs0vQ8vE3QihLgFUe4VHC9dGrHuNyyueKc/89cbHK/sKJfLSFKSz?=
 =?us-ascii?Q?CQXB39u2syOTSogmBRHfmPWt8FiEWzOgVqWm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h+UDnWocSvN5vTtz0u4iqMDILztYgutnFmw5e0y4ccIcuzfYnb/DA71CmrWA?=
 =?us-ascii?Q?Hr8fpgEiC9Hr/1LBTz2gqzyjFiuNov6rtVnY967cmAAlJWhOnsTH0YCgkGd3?=
 =?us-ascii?Q?RYJ/4HHFFMIkwXdLce10+4DGAuW0xZ1SxeJ63pmNR8/jPwbNOxWWEFoe55Nl?=
 =?us-ascii?Q?hWEj7MRjp+nfnr6QzLJFRPX4YnaBeMIUOQtjyjI6T18AjxrXNJzjwuyRJaJx?=
 =?us-ascii?Q?mxzPRTNLZ4FA5/geDd9rzue3gGYGROqneUyDTz78uq4sqN0BagvwjLFy/uDQ?=
 =?us-ascii?Q?T2RK+VkUM8FR6UoKcB3vFFCHXV9CUNInjbKXVlmgY0+XIIz10+MTe8MO4cSq?=
 =?us-ascii?Q?zky0VvXJXbsswyuMdqDG11EvxCRa7TYUxCFmdB18Bv8g8eBc0PsgWR73IL6z?=
 =?us-ascii?Q?Y8WTSsGCfFm8+Cc59SLGaoce+Jrs/m9F6wno3g6845C5XlzOq0cwUc5MYZW/?=
 =?us-ascii?Q?BkBEOPtvzkzMMaw9jcLblC7ukSMCziSpJ3WEwOuVkby5ReyZhlOnOvpJuhMo?=
 =?us-ascii?Q?YigfounF8PE3B0K66pavrAo1s4M9y1Yxj4COXmicnk76wS4yarIPA+kWOQc6?=
 =?us-ascii?Q?jdx1x/MMcth8B7UYZ5NbpBmKKny8Gg3ZDfX2wFeRSXZQ6SEWx+y4hti4iCKu?=
 =?us-ascii?Q?RGplRll2axkq4BMhC/pPOzJoPX4v6kXm9QzqHzvoNRZ2WLM67zKaSrRcY94I?=
 =?us-ascii?Q?CUZexynFPiYErEfWKQYVlZZP493qrIrcLGZSN2kFgISMgs3d3rQ1w6NXrKNc?=
 =?us-ascii?Q?n1cM7Ju+UocJC4l8sNscdMAGTI8PxoRqp4h89vV3ZFOvCPBjnvu29XVrKfH6?=
 =?us-ascii?Q?DDPS6YWskq7UfVgspXjai8ZVZn+mXqCBEcGxoWkMa/l1lxvSntjbjDiGhRoi?=
 =?us-ascii?Q?JU2o3KQDo4B71agLvdMuM2U5+x1ewKBwngmhh7ArdppSyOngTUe1PyCiVExl?=
 =?us-ascii?Q?p5fxeFRa74i6hsctZm7TEalb3TV8DXgd/9PHfgijnMtx6uiNruBwG2eolAsP?=
 =?us-ascii?Q?DVEcnDubXiubW2A3c+7MtU2Sz2IK6rVe1jJd176imgDkRC+eC9WrWKlNWTcy?=
 =?us-ascii?Q?rZOsPe1MdmIW+/Zp7o3W2tHjCJtJ5yyfptGM2+wsap7HbpmDWXvIjtUr/uzu?=
 =?us-ascii?Q?p1sA8dqNVD8dSsG0x0ITo91XpnvaMyGnuEVi8P8zDkzfO1L/vJy8oRLdfBoj?=
 =?us-ascii?Q?kvwGlqNgBYS2JVow6gP78egW0JHOAgOMNl1A0H6L88wlYdcrKX1gfrs18Hm1?=
 =?us-ascii?Q?i8Kum645YnWYY+moFDp/eTl19hhNOaw44x3/RqXBNCC1QS9v/KvOoInDdQO+?=
 =?us-ascii?Q?WTuK1UbXq25LzL53BQefwZBB0tpSfiD2mYkHmO1aT5jVwz7fLc1b+iC77mde?=
 =?us-ascii?Q?vK7IC6jVSl7HTvLprxHZm4R3pTykXKlhQJP0uzL3wtP7kq3w9MHCJQrykgbF?=
 =?us-ascii?Q?rOZKXFpWjKPDBbl67XUQDYhictlAp8FvuluqiC6/++8c/Z4By1N9YqMhF/he?=
 =?us-ascii?Q?jHl6neAH/nF7Ot81CTo0I7eZmgnApZHmm+hfu8F7q3Pe4WTqdV0DTvLqymAI?=
 =?us-ascii?Q?8ZYbUaVOLJZMivq/XxaNnONHRZwZJ3njBIylOTaW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0d0e35-ab84-4631-9602-08de383b833f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 22:28:58.9377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Myip9qT25PH1XPRRdmgBEG3o5s8bH/l0M0cezFe04xUNmMBCbpJ+EtEjZWImwLH+BBcrwK5XNz881YIIcaCtXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765406176; x=1796942176;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o3fdwp+oxzvnxlh3aJf3t6S+ZhW8KM/iv2YlVG7Z86E=;
 b=SIUbiOSsM4BqfxqwgWGmg9q8wODHmaXz19tBxuyCZLHYE8JOdmG2SFmd
 TOnAjc7j2wAu4FXwCdEaDGmDLNUUOUgl3mpniUMQZNsvkEJPVJtCTR8NT
 iUHO3i3ASgGixmaNIPq0P35Xs8C+zgDvKMfTD0p2u4ELh/1GOs3dnpurz
 RyRuwK/i2kSSDrL9V4OdvjeDaNuiTbG1eAmjE5zLDWAXWQkfLCPgYYmz1
 bp6Mnp5t7Yg5NdpEa+OFocfW9+MHdtu3+1Ul2LNB6N1jxwFz5lgyTACX2
 ZSxNHl8/p72tWcPuGyiZYQcM7Pvx59syobNP0nRAODW0xL+kyRn/9C9L1
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SIUbiOSs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/5] idpf: fix memory leak
 in idpf_vport_rel()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Emil Tantilov
> Sent: Thursday, November 20, 2025 4:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; iamvivekkumar@google.com
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/5] idpf: fix memory leak i=
n
> idpf_vport_rel()
>=20
> Free vport->rx_ptype_lkup in idpf_vport_rel() to avoid leaking memory dur=
ing
> a reset. Reported by kmemleak:
>=20
> unreferenced object 0xff450acac838a000 (size 4096):
>   comm "kworker/u258:5", pid 7732, jiffies 4296830044
>   hex dump (first 32 bytes):
>     00 00 00 00 00 10 00 00 00 10 00 00 00 00 00 00  ................
>     00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00  ................
>   backtrace (crc 3da81902):
>     __kmalloc_cache_noprof+0x469/0x7a0
>     idpf_send_get_rx_ptype_msg+0x90/0x570 [idpf]
>     idpf_init_task+0x1ec/0x8d0 [idpf]
>     process_one_work+0x226/0x6d0
>     worker_thread+0x19e/0x340
>     kthread+0x10f/0x250
>     ret_from_fork+0x251/0x2b0
>     ret_from_fork_asm+0x1a/0x30
>=20
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> 2.37.3
Tested-by: Samuel Salin <Samuel.salin@intel.com>
