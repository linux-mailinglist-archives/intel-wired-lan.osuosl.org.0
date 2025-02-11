Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD99A310C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 17:11:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE5B080392;
	Tue, 11 Feb 2025 16:11:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o54ebDln6lNx; Tue, 11 Feb 2025 16:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E743982224
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739290278;
	bh=5IfPzP8ZGQwuRgTtiCCLdca0p8sPk20XfapV4Z586dI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DpQrwdESQ+OX+GqTqMR1EgyGNNtrAR8xoY8LbGUBksTEz+4LibJ6Fujnn9JH2AGV0
	 +shh1YkjGXsEs2/r06GnOEwB4GV8Y8EZqlxSH2JQt9lSWXnmKeqvHvP2fjXqiVGLGE
	 NOWplVRDWV7E2qRhrTCgC/HgBKTlpqjbwP2D/C/QCp0NAEq0NNXAcpAHNefKfkEyD/
	 4PHZFNYAoAb3wzw8A1iTpoRB6hWcrOW9huybxdrzVODH7kXMLCdqRDCElsn8HaoDqD
	 HHrAGrX3QyhpsQib05KjflYvT2jUdHvT2SWWW/rHCmoSmXy3JyNb49Z01527+L0wYO
	 aRiw0JvoBoVyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E743982224;
	Tue, 11 Feb 2025 16:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EE0A6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 09:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2814E4148D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 09:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K2GAWK6rxFFs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 09:36:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E69E041489
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E69E041489
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E69E041489
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 09:36:12 +0000 (UTC)
X-CSE-ConnectionGUID: oTaz/x+4QNuGh/WvyOfq8A==
X-CSE-MsgGUID: A4qjCgYtRZOGmuLnEBfmmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40145163"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="40145163"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:36:12 -0800
X-CSE-ConnectionGUID: FGUllGj5Rg2oFR29o2CQKw==
X-CSE-MsgGUID: GfqHfLgZTR2Szlg5stF4wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112284737"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 01:36:12 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 01:36:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 01:36:11 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 01:36:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Trn2h+3EGWT0IiF+jNH417OB8N5F7cgkMyAxkH8d0rBw+Dlanicte4grwEVULX+NiivTAv1nO/rAv/hNGzrLXaOQExCkgWWnPKDH/xA9eLZbxaZI2+YF8nWOuTZa/kPuABXWkHavmba0xT3D8WIzow3ywc6qKaLWOC8nzO6eL4mUY4H+pf8amfFWqanE6iJAyHCts03u+u/nYxxUaEpBCQNzUwf8VduhW227KwgEJJ8rjpa1b50hd9JjeRBikyH8BhkIIGw9aj5bsbtL4VZJMwz6/n0dDQ+cM+clpldgHOGfs6kxQLM6tEGnx2FQKOU1v2yvLXyojm5YAxyVA11Vzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5IfPzP8ZGQwuRgTtiCCLdca0p8sPk20XfapV4Z586dI=;
 b=ooTBXBD+dTCWKbBlswJwzskTJCuxedBwvpqafeiYHA8PwZukqSOA82csty35wtLfjU26UnewpZBR1yVjXXJYwVfxNtX++lTJDg0MlZ0LBONqcGWNnNllihokulkweMIPzO7vnrqMe5ePQQvrLZLTDmqS7E5DdgHJwSnqFCt0VsWxITllc1y6kFmgZzp8NPKsbq058Ufm8kfdm5fMmRF2OAnzT9NRcYwIjV5tWGdteiCcghngKFAlO063IW2yz9ahRWPNtcVogynYF8/m0PgExij0+8iuf7CbDQBAdyvQgxEPTvypRKsILQcsBDNE5tMx0R57fZOd1PhvyOz4hwhc7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3542.namprd11.prod.outlook.com (2603:10b6:a03:b2::15)
 by SA1PR11MB6567.namprd11.prod.outlook.com (2603:10b6:806:252::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.21; Tue, 11 Feb
 2025 09:36:08 +0000
Received: from BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4]) by BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4%5]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 09:36:06 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: Fix possible skb
 NULL pointer dereference
Thread-Index: AQHbc9nJMoe0k2rjok+2sXGCLZ/fg7NB5w/A
Date: Tue, 11 Feb 2025 09:36:06 +0000
Message-ID: <BYAPR11MB35424D6905FF28058683DC7CF9FD2@BYAPR11MB3542.namprd11.prod.outlook.com>
References: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20250131121450.11645-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3542:EE_|SA1PR11MB6567:EE_
x-ms-office365-filtering-correlation-id: 9cdff51c-2da2-4f7b-c4a8-08dd4a7f8268
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NcI24bCo1+HUBMOuuF0gpIvN4ohOgWKUE2JKQV+nafEGByOXlf8qWt1mz6cb?=
 =?us-ascii?Q?X/5wIaovt8bXuaNt2NxWyWib09u4Fd5IXwYniQZK6nh++H6sYDk/jcAnFQrS?=
 =?us-ascii?Q?HhZny5q0ll1wcV9W6zgSKQy8rD5L+z9q4HreE6LDoAFzaygZSoI0vcKuDE5B?=
 =?us-ascii?Q?9AP8MD0N29yqdhFWISxh2zWwOA+UG//ygGpGiixHWyVtVtIQneS0pjsmgrez?=
 =?us-ascii?Q?8qhV/nhQFSK41y25CMyBocKvuFvg9xoVSFNDuFq33Y75xo5jgnwKBk7x+0of?=
 =?us-ascii?Q?PeqllQAmtMgyZpcl+2qg7oUnIYUjebNTqxVoiNBGJDQzbhlcZRvbqvZKbK7b?=
 =?us-ascii?Q?7Ya+6UPFWkaUnHWtq767VE05Kutfgw7miS/hwaFFoG/mI660nLUFzjR0iJnT?=
 =?us-ascii?Q?4kqoE/eJtapvqPI5K9w50WFkqLkc8Kdnzn+HEgd5mJMui8Bq33InpdjC5pLh?=
 =?us-ascii?Q?mECk2jBmV0eFOQRsmseMXAgsh1kZYgeozF5qioos7VMZYtFRtjx7GXSz0ZzH?=
 =?us-ascii?Q?UEoqbqJDLEK90DqJ9K3wIDqSdq5G5EhUi+MAAeezMhRGw3889IRdyZWnn0ow?=
 =?us-ascii?Q?exTzYrEAeL28Exh2UdHi6/jIG0CdrdVRLvE70Qa7yNVa5b5nk6guFv04tDIS?=
 =?us-ascii?Q?1hC12xqzseF6WuuFmLXuZg+Qsg+MBt2HJ+Gitx8gyD9mOQ8gbq/gcxP0nwNy?=
 =?us-ascii?Q?EpH64+pJ8AKFF9IiOQ99TL33p2RoWNCVw7OLNN8FUTH76thboedINaUfrOHU?=
 =?us-ascii?Q?+WcckjRmGMG7X6V0GwbRzI78HqXqyMan04VEQB+9PO9sZCsVHU3RpmQjxv2D?=
 =?us-ascii?Q?emMGfrKGkIS8xDktxKFoH9dI6XQxUSGKSs8pSCy2HgEekH8L/AjVLb/ieiAG?=
 =?us-ascii?Q?fh62L6u3uf2JcCW1lzgjeb3HrvC5EBRDTcVrJQlmQWSPINbERxBW9sxkK2tl?=
 =?us-ascii?Q?JykkhbeyPeRulrbdVXStI9Fm0U/HWf9QDr8NyIL/u5r8RKCzdRFu4ZPmuaXN?=
 =?us-ascii?Q?6DqDsFMIddRDCTVXE6/g4VPkq4QLJvZcerd3sjzbT5D5sq/37/VqP2gi1qCx?=
 =?us-ascii?Q?iHuAmVYzjFaVvjOTe6niQ7JvmOzFaH/+tP7sdJKvjPc8sCE76K2azRirhN/w?=
 =?us-ascii?Q?KIJmr9JhM1tFsFT3+q9oDXjSs2w7Q/hxhaUb0LRW0xoS+8wi1M/BxjehiFVw?=
 =?us-ascii?Q?uxqPbOd7uKgxnxky+NS6xGL2y6SWnQD70mHjP2pIEl7piPfT2cDLqBB+UahM?=
 =?us-ascii?Q?BeVZH1N45ZCKvcM4LX2MZCFWAQ5tIE1dcfQdI7vSc6KLFdYYjMxTGsrG7pCx?=
 =?us-ascii?Q?lFsqXZV+itvurWsxP4ru9sxNuFX4LPIPc5iBYCg7REDC1p/Ss25OJzEpQJ6o?=
 =?us-ascii?Q?6F5KZfG2N6wjVlOttEgao8JWjOqQjH0VUMcpKJACmxDJAt/Wovd4mtngdqCs?=
 =?us-ascii?Q?oBftdrAheloZxjsislaf1LVUUfG3SwgX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3542.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oBmd9gopLLbfh1eE8GLPF30lL6UKxgWb4R2I3Bt83bYblqoVUhYBbY2fGBN8?=
 =?us-ascii?Q?YZh4sJ32lJrqOEl35CCNtmk85fca7FBbShQD6sXOPbSTIjvivJU6nAwu/fHm?=
 =?us-ascii?Q?eABEV4MPQbAXeJ3cuWVWTrWELRGtN6biryRMAeGiW1fZ18gZ1Ko5r83qLZGs?=
 =?us-ascii?Q?3jgLEbEZhcsQbQGreyCe/7BtZcBWWkCjdIF9K5sHHxSYAUNyN/+mHbRt0lhD?=
 =?us-ascii?Q?t96XiZL7zVu3vAeFic/kBFTZgirjvJlQ/YsB+g4R8Dlvv1qncrBe/f93F8t+?=
 =?us-ascii?Q?giva+GyQ9i9hrQQ/P2k7aSS5ug0Ee/HA2/1jYdJWYBsliGyTaAdpRHLZARK+?=
 =?us-ascii?Q?MYunKhygkYDNfKL8g/Gm57pTGWkhqou8XZdKFCew4Q/4dFavqr+QUm/W/opy?=
 =?us-ascii?Q?5QdEDtJvYVhqOIVbdovTAQa2TELicRDe9Z3AsdnzmWfsTIAKsY4vjy9vdat4?=
 =?us-ascii?Q?Jqd+XTHXy9vTgxF1TBq4DVfcKF6ERdzNerNUY/BTbO2sIN+c5Ae0FQK6oPIx?=
 =?us-ascii?Q?/eFKKjm953nWwQrmqrADa/CcXjkB/Q2a4a1GwwqulP0lolZfzUhdHlx6HPWQ?=
 =?us-ascii?Q?H8K5ZSSz4lixUZcJPjdLzdAimtOk2Q6JWvWATpjo2tQh8QN7csWp7G52fRbV?=
 =?us-ascii?Q?CWs1rNu3VJ3MmFL4oVjzLN2ywdPiyNnzOaV/g2ltaiujUjR+ZV5CnTWtg1K/?=
 =?us-ascii?Q?9mqZHhjduN8Coo8aCISX0Ilqxkqb4i10vDnuqsAQetWnBmzHMnsXUhr/JcGi?=
 =?us-ascii?Q?OTtpQyHdyRN8H4mTz6SC+/lMFl1iFSW251aCKRRZxTFaf6wZTl3hlWoWUBuq?=
 =?us-ascii?Q?bhVy/HlUxP3ZIf9lppQlJEa9sHjbGCr1hu36bn3bi9lvr8tOOTwQF61C7ycp?=
 =?us-ascii?Q?nL1Gc/mCw12rnWS2QSyfjEdwxTU65BD4w9N3auNpWBEg8Qh91IRZvMS9XmXT?=
 =?us-ascii?Q?wePmVns9UEHzMMv/c+w0LO+9y1Wf658jjxXs4i9tYBdIy4O7EdXObN04U3di?=
 =?us-ascii?Q?pEgeyLqY+FXFUB89QNMlDQWGo+NyiBf7dWmE3pgc6DxT7LjE5bX/I/p/krms?=
 =?us-ascii?Q?K8WcRNLvcYU2r422TkZ8/+QoUf6rwJqZUNV24y8BghiGblI/324VTZr+pqW8?=
 =?us-ascii?Q?mzkm9/LgvAfpQmYFD9FmyItoRZJxnJ+8WabDQ5a2hqnc5yHXd0dc+6NlTpgb?=
 =?us-ascii?Q?NDhnHDXnOafilsRarzteF0Oqbane9G2617ga/X1GeUuDa3Lyo5A8PQxJigAh?=
 =?us-ascii?Q?NvuwGO0aGsDrRdHT006pBQ3YIsvfRdt8O7qtgS6pcvn+mjBnfegT74slXees?=
 =?us-ascii?Q?CwkqAtgFPhtiDdxCCxyH/llPHpkXGtILeiYtgdYqM9qaZ7yXkR7wcLJ97zTc?=
 =?us-ascii?Q?kbKp2aVPAmmF40iz7LC4Icy479wuQTZMQ+ujYaUkiChjKo0fybDO29vgtpKi?=
 =?us-ascii?Q?QRzlCNwJ0CVQfbhP3McBSz5JPXP8onzygJK18lhM6z0LiAgTP196YpNfQcFr?=
 =?us-ascii?Q?zIuRFDCF5PNxbaZkkmtG53KxgG2ZOL4YnBwqju4A7O0IgbzCc8kpu0aiw1W2?=
 =?us-ascii?Q?rffqE+b1qpqsO5ohAyjV29YqW0noCcmyO769kksyckoIUx8BwvRA08HlxZfQ?=
 =?us-ascii?Q?CPittnymBseH/RqYHw72dPY+AZm8z+UmEDEpRYwjQDUcBBcv3xOijY+YFqqC?=
 =?us-ascii?Q?Crgw1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3542.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cdff51c-2da2-4f7b-c4a8-08dd4a7f8268
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 09:36:06.5103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MbcFQT60knljdgY5aR+4oZuTCvIoT8jTihVCRRmZxrtKZ+/ecQDzQIororqEnOyEH7a1BdHxlce8t0ZPt8SbPBy23qCL3++QhEuTqP4Gacg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6567
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 11 Feb 2025 16:11:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739266573; x=1770802573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X3jDGeLtV+uW+axQukMCkpBJoKgpOeH/SJCitugYNUE=;
 b=CpEhEbPHYSkjGeH9q7NVe4Icj+4ggII8IgBzhcZDsxdqxvxa6wXrTjId
 I+RxEQo2Eg7dozcE0ggpiwyiRoj2p/ql1Fl+GISyyl3GRznQpIg0amrYC
 oGrr/MbmYh5SHPdZDz4bwTRa3Bur8v+fa0/NxfVWvM2VIrQJsk0fZVwu5
 lw4Yx1Yd6kPTpqlVAEyE3visFs8RZNfhZBSzsIIdUP97VUhJTArpm9UJe
 4Krmnw46rK/MRLZ97nqGzlPKnU+OH4LYyIa/15cKqSOyxFNQRkj0VsI3+
 4GEQQOqBJtJYVZOURmPIOod0A+ER8tCmvjYemjpk+H4Xo/GXinKXiNJhz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CpEhEbPH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: Fix possible skb
 NULL pointer dereference
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
> Kwapulinski, Piotr
> Sent: 31 January 2025 17:45
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; dan.carpenter@linaro.org;
> yuehaibing@huawei.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>=
;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: Fix possible skb NU=
LL
> pointer dereference
>=20
> The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
> ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status
> encoding. Propagate this logic to the ixgbe_put_rx_buffer().
>=20
> The commit also relaxed the skb NULL pointer check - caught by Smatch.
> Restore this check.
>=20
> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()"=
)
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>   Provide extra details in commit message for motivation of this patch
> v2 -> v3
>   Simplify the check condition
> v3 -> v4
>   Rebase to net-queue
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20

Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com> (A Contingent Wor=
ker at Intel)
