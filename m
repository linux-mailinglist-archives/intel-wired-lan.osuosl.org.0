Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6058FAB71
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 100694052E;
	Tue,  4 Jun 2024 06:54:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ijfFBayeKhv; Tue,  4 Jun 2024 06:54:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48AD540342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717484091;
	bh=ERPRSvKJj8ULN9KR6uWmDIbxkT27l/DX8bac0XNc5nk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UTtlmDP893IDjYmRE9orkz/LmephRVOoX572iiNEL1mj+ataqHlMUoR+eM6si/yln
	 C3Y/FkwmLAQ0UL6l+8zifHZ2dZjXrtR9+Im/l0P3lvqd2VPCKi7T/xpcNDYNA54MCK
	 TIjePzZR8YKemerwtVvra8gfNVpQF5UQAI4Jer9wetKwWp8wMk4t03yEulIg2Dlhvo
	 v8Tzjg8p6bcs16TmW82EhZo/bBzQiHMytGB6Ls0wIkg/SXYCbiq/aIBKvaJrzS0tm1
	 1W6oCZp7YnVw6CzG2nSV6Y4aOuPHUbEhEUN9gITOIn+9/Rvxd6XjhS++q+0mqjMOdA
	 7Qa1M1rPbN7Yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48AD540342;
	Tue,  4 Jun 2024 06:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A53A71BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E0D5607FA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RPFNqUaQqrSn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:54:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0B04607CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0B04607CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0B04607CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:54:47 +0000 (UTC)
X-CSE-ConnectionGUID: zltyZjEhRySTmnWHxBdS7Q==
X-CSE-MsgGUID: 1s2Oxm+QTcib+0qrH/jYwA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="14230890"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="14230890"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:54:45 -0700
X-CSE-ConnectionGUID: riHaMK9WS3yBe4koxVmpYA==
X-CSE-MsgGUID: /8GEay5ATcCrFhdAEUNLfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="42068374"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:54:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:54:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:54:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:54:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Klck1bkFik0reJpOselfE+/FdngG9K8RGCwhxL2lju9ou81SQaAIpXi1LQPJZbc7TOIjb2S390lv58/EjWDCdaRNuZX7FiOZfvXXpSvGeLbgfMG2tcTFqbazOK1Px//ATkDZeovPviOO7B/viZi3XW5iheVTU9lS3cfkRnJz/iSdPQWn34PSlJg7NJs5DtR/um0Sva7o01cVvDtc1i+WbimVt/6HEI0/+J9L16YHIwoK6AeQvp9eUD4666txFHmcWQ5j+KB3aD7XgPi9C07wY3O/jtW/ao7hlwM1SP1u1FxNdTirFspeAe5c8bu1DfbIyeOaKTrEaHVnzYfneXTXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERPRSvKJj8ULN9KR6uWmDIbxkT27l/DX8bac0XNc5nk=;
 b=XJ2Tx79Riw1uJcKc308qUsbhtE+4cC7t/KjK64vW5rBZj6fxcWu1s0bZnTKwD42KjzOIAK9x0tq8A0MX9GIbhycl7XrFb5obcuATrgRWAW5v62sUQb/Izj6u9Zva2CGq9nPDH8EpbnmY2vP0FwcDe4W7px3WcrdnsO3pAseOJYvsUn5f0bGSOQGcYpXHPdIF+WcmU5+WnRwJAK+0FFhoHhxKTYDGWWdoOGhySqMSakyQOzlDifD/ilnVCvll8GPDZH7v9tKNbfSDGPYzcOkajatuppeSwCcGJu34vv4E8ynGYtN5eKw1Faj3hUZCulgEoxiiSvwPVSRQESQnSa2lJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 06:54:40 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:54:40 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 4/8] ice: modify error
 handling when setting XSK pool in ndo_bpf
Thread-Index: AQHasbrC3OWssLR5lk+Pk0z6uWK4OLG3NHRQ
Date: Tue, 4 Jun 2024 06:54:40 +0000
Message-ID: <SJ2PR11MB829721540B12600B8727B723EAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-5-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-5-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: cded911c-2630-4419-3f27-08dc846334e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?NuAn5dm16jtD7VgTTxKaRGBZB4BXOgdhRJgucRQZ8SF7+RISV4yn5KBZdvqg?=
 =?us-ascii?Q?1Z/zcb4Yw2ag0VC1AmJ4kiaoZp4kOQTzgHPnzs5kDJFOEG4PnGx2xbX1dwp1?=
 =?us-ascii?Q?9RuKV9IOV3liGXWcGqs9pKq/79kLlKe++F/afIbc/jxnaB8UrJSni36fVpkl?=
 =?us-ascii?Q?HhNvYgPuvAMmZF/m0Nm+moRbAtZMPZ/dIg6ZHlshlRB7P7Wlt3iXT+shoPEp?=
 =?us-ascii?Q?nvcesE8iLu/ye11UOaCSbMl2ySvqQKSSEu9rlilObRpBEf6p7pvEtSA6jp62?=
 =?us-ascii?Q?tjQJM5U7zkF/nUHcXvp185F9wTiLyScCF+NvWHXvTQaoC1XKdY0YQN9ZTHHH?=
 =?us-ascii?Q?oUVbEPK4VWKf7oxYGmTwlgpGd2CPNAeMvDbu5Dr3H1k35EmAP5G1impOHtmI?=
 =?us-ascii?Q?OEBT8kMFvrBZyDVow22nt4BYwUvxEc/vR7KvOGVCuNoV6O8F9n9qMFe2EF19?=
 =?us-ascii?Q?ToCXfzgFgX3jmgEDG/KA+XmtIHfyoDl95AMPUV2DqRvq7WWgmzVH4LsgpDz4?=
 =?us-ascii?Q?6+MWQxNLEDFdi9gG3lyUhpueyQRz/SODeQbGUL5Yoqfikx8SFP7TThHdkl0H?=
 =?us-ascii?Q?55SxamViURdm9T8MqRobEfJshIuSykIfcJy+h35A3yHTzOotbIY199C+lFHD?=
 =?us-ascii?Q?UzPMgTwTlrz6Z0gaVSkgq73FZuzxwmtNxkTfGSwzt/I2bH7gugWBbcaf1Dse?=
 =?us-ascii?Q?UCc37TCnu/FeZ/7dTaYTEyxeaJgnasaatYH3ZXdzO5VIcBdBG+8sU1nHGpXZ?=
 =?us-ascii?Q?5xe4TDtHuYsT87IGGdNt1BrAlTHqpygFHzMadixL045oW3xCuIwGX+6sVLjz?=
 =?us-ascii?Q?sPDc5a+yj+HK1peOla/8t02qkYe5CuFtUXA4Aek6GQCUD6IvVGGg+XMUG4Ny?=
 =?us-ascii?Q?acH1k17K/Uwc/eqWb8VdD4DH/E1nR8eE5QLeATfRN2gKunMXsFphSoAEYPgu?=
 =?us-ascii?Q?7KFCLh7sOsjzFFJSmb9lhEWEa4wNeuyJ4e0QE/VEGHM1JNmgDK1QlYni0ith?=
 =?us-ascii?Q?gwwaFjCWXEEABsyrVxfusmdoEnigNLElknWVB+k0XKeQRCHkpkfkpRM50G8C?=
 =?us-ascii?Q?OX0GwrhscVI06zi/mwGB0s/Drqn/ZU446k/n5jNSRD4cdsEPSOKF22rWuLmI?=
 =?us-ascii?Q?XjygY8UZDV8mQcnjryrBZ046EY0i9qjvgHMx21sYhi53/qXAub/9GJPLHzPu?=
 =?us-ascii?Q?1OoFKs1HriqvYVxegfF582a8v106/dke2M9QKBhPB2QsyNRCI4iXfDwLnC3U?=
 =?us-ascii?Q?GdIy1LHTgSl2kNxxQQRRX3IxmrBUNK+oiV/mPQlXAQRMRt+UER9E5060k8Sh?=
 =?us-ascii?Q?31fVMKq2QaZ5XSaz82pRADERXY3TrvXnIyGVy5tat2ptOA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L5Izkv2sCTbJ+Uw8ipfl4wtwg3HsI3K24zweiQn1PeZyC3aQnYj+OWLOQl/M?=
 =?us-ascii?Q?LUBBtBK5swOHaNLrgM/asz3RA4a3U9DL2Icp5td49CDtx+jrm5xkyZbf5ctG?=
 =?us-ascii?Q?NPnLxklioY9zFM971Ar5tMINfSDdOGMqTmx0FYAWTjSF8qyugov7ER7c7YAA?=
 =?us-ascii?Q?VNLFd0aXqQoHw3hKhjNqSzhWEkSshFSqioSMl3ck1JnhyjnPVkp07xQEl9b6?=
 =?us-ascii?Q?X3cqpNryD9PaeqymRyo4A9M3H0Xr18x5jdj9Wiq+1xaqJqNoZkuLeUdkpX+8?=
 =?us-ascii?Q?yZbun+YnP8WcazO22PZFqSayiNW+CTl35mVZXexGZiQfZL3ax3OTrvgTcGWS?=
 =?us-ascii?Q?TEKO2nnknw/4kzAOQyEnPcKmcqf9eJTjFaEGVMhnDMevoXCSRp/BRBUiPNKK?=
 =?us-ascii?Q?xTdvDs3jWM5s5o6dV4XZwJdHi7G4GObC27pa90WzxIl99N7qM7hkEWDFNz2I?=
 =?us-ascii?Q?2YKC5hxcjytnjg8CCclCX3xo8NtGxMO4G5I140Ke6BncsNnvOCa78R16H6Cf?=
 =?us-ascii?Q?tNPmedkzadwkkSfcVWV/XMiMVmPxD3r55bDNCRr5n2nbBFtu3ASRdOZLtgES?=
 =?us-ascii?Q?CI4Bs2g+yhjIs+whpysUeae4T22yvJkPnLywB53YBDt2ykKss3Y9AK4XMCsN?=
 =?us-ascii?Q?q2SSm511Y00JdJrknQ4BevKATDu5uHy89HpRFFpw7YuGzCrxfivakjULGmae?=
 =?us-ascii?Q?K+mQD4FDnVdSfwuX2xi/wz0tS7EbSTkDixU3xGL3puhnzgY9RVtFnfIQl7S+?=
 =?us-ascii?Q?G2/4bg+0KIepWad6X1jGcPLQl7HGREVj2Oh27Jx4fUdTpFKCy+EAJ+cHWoKX?=
 =?us-ascii?Q?osgRFdwMUwzolrAvRFZqqPkpmwM0lVqRWkpysIxczAdFjeLNFC4vT+lD1oGM?=
 =?us-ascii?Q?1DvhK2ehHyak25L4kd+SpkN7I1SPSk/aekWdPijx8DR/pOdQXmiAKhMFKy5y?=
 =?us-ascii?Q?WHkyWqsk/AG+X/QXUWoSud0rX4RxRiu0XAfYbvp7InheU7gn4gySZu9roPJy?=
 =?us-ascii?Q?W0z8LsU7Q9JK7SMno9/+kHj2+JNxv02MbFqxN66uMagG5u/iM0HTG8+f9/d3?=
 =?us-ascii?Q?gYqwZ/qWCbuH6DDa6NqqPcUo9BgSF3Se3YFehjFzps+3ttvn61R7aBnuXdI6?=
 =?us-ascii?Q?AVLubeFaRoW77VgNo//xBDpdQ0kdqvHOZ2IEr7a/AGb1RsKpLnCWfPkq7Asa?=
 =?us-ascii?Q?L+I/s6bL2LzfSsQR+LTs5SJOkKkToCM/F8swQg+2DAKeRqasi53ER5c6iXUh?=
 =?us-ascii?Q?uBsMNesDLjHqPC2nY4rinXNyWzo67IK/YgZlzqhG8Lo0iE9NP+PdRxxLCKhq?=
 =?us-ascii?Q?k3Ri7ene08OfqiYiEXQudLrBEuzLmMaaX5AkT8lhW5H43vnNjaakrhBmBhmF?=
 =?us-ascii?Q?Z8OFIb0fSvJvyEDX0gSdTQyaxRfAHJ42rkyUoWipsf7m3xrc/5IbV4B/BoCL?=
 =?us-ascii?Q?542OA3fWIjoW1H8VVmLxAxMrlnfyLzImnclslXI3QtaMbqlzXbURPpr2vFrn?=
 =?us-ascii?Q?HU00gOkfKl9uDhKbxWFu3gmaW7vnE+v1a4i/E7cI5Fel5tbOq1YbqwZ0xX7H?=
 =?us-ascii?Q?kxKOMu95zvZwkFbEN4b4oqNoVkqQ8iXIJ/zpJQPD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cded911c-2630-4419-3f27-08dc846334e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:54:40.3272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y5SYe7uxhmZXyRalZs1lPU+rHEdwkg8SuMmFGZd48j9c5mcZPVAmrtmJdlzZ0pKCxxYz/f5qwso0qI72yK5siQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717484088; x=1749020088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ERPRSvKJj8ULN9KR6uWmDIbxkT27l/DX8bac0XNc5nk=;
 b=Cnrr2a2qQu/0PvkGEjFSxcj6GUpTLcrU7wVRezCWboGs8etA4w52157T
 lD5FonaUwEvF9QxXd/vscTS5anf8mMIgZ4oe9Y34cafuR2AS3FoIBtN+Z
 fgxjVpLssxStH9Q5bBO7JWYV4Yi7v2VtDFdj+1Lib7YTu0Ug25Ic8IBfL
 ZNH9fzFjHoUAjje7MxK007PRkHMiztofd5KlQozHBz1fOu71jgg5BVIvA
 RW2NqjxVKy1yslcwzL7YXeNz1CRjSdppN+FgPZTeANWANC+KdvtTRCPGX
 I8cPgaeRXOc2fFD5a6w0CUl2KjvgLkTR3Scjt+F0F9dR2MYr12eKAZYdx
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cnrr2a2q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 4/8] ice: modify error
 handling when setting XSK pool in ndo_bpf
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 4/8] ice: modify error handli=
ng
>when setting XSK pool in ndo_bpf
>
>Don't bail out right when spotting an error within ice_qp_{dis,ena}() but =
rather
>track error and go through whole flow of disabling and enabling queue pair=
.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 30 +++++++++++++-----------
> 1 file changed, 16 insertions(+), 14 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

