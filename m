Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E236962FA2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 20:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFE7A40DDC;
	Wed, 28 Aug 2024 18:17:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clUu_loCzgvH; Wed, 28 Aug 2024 18:17:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C055140DDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724869043;
	bh=jPO7tLb9Zv26ULvCNe9gEBJLKRweUO5lzACA/vN+XOE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hokXlAThc4oz5VClQU4Aj+dXLW9p04e+TkhXoQYIA1wN1bKgB6Qqnv4JUCT+u5IFM
	 l1E11KCU+UUHzcpZ2JrFgSZ2wLs2mXIyJu5Y79HGjIEV9TO6B9BhiIUxGRgX329Ifp
	 HQTVxwJW9Se9vB4w3+suG+r8fNZBFp4x5CGKfAE2MctQknT1LQdjif2LaxgQopaFwr
	 z5jU0Nz02bSSFxQ+ZFzNQF62dFn+9XuFUA+Z4HyYi+ly3d1AKe5VjnxbXgiZ+WWa4b
	 fPJnSYGJM11ii9+KWIE7n4FcY3MkuSQcg02ye2rn4eoVO1eVz8n+SOBo0haJYZSJr6
	 bKesldQ5mvnRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C055140DDD;
	Wed, 28 Aug 2024 18:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DCA61BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 18:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29F1E4091F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 18:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGO3aT-RQeZb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 18:17:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1674940730
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1674940730
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1674940730
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 18:17:19 +0000 (UTC)
X-CSE-ConnectionGUID: elxlGqcDSwSj0AYOSpPfaw==
X-CSE-MsgGUID: JHIumr5fRjOjuElnGsrJBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34801098"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34801098"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 11:17:19 -0700
X-CSE-ConnectionGUID: qPjxBul0R8a3019HlUQN1Q==
X-CSE-MsgGUID: lu3ECVjRTpiAg0ZWkRYd+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64012936"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 11:17:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 11:17:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 11:17:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 11:17:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 11:17:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l8emj6OzXY1B/SFjMog3BXMecPi3pWlvJCM4S4twYLjJ0smFpwWCLj+VFwsbU1+Yeh4eT9/gTMOABNfwSmyh7HElkaEBK/qHxs6+fn/X3ChUBvunRM+YI2ar3ml6sUg0ilFbsY3rCegbUBSjEGFu4EpZRzH1gywxD2sTQVBt+YeS21mJoYOLXfAFUYpcU733WCwPCa6Nbp0519btqwR5SZ7XEq6P9TTM/cJdC0GV43x6njuzgMRI2HpcD2UVu1V/+VKa5z5HvJI/owpAmjw7dJxoyE8uc8KjFGuFsYF5uh1Y7utR3b/jlJBY7OXK/OIFbSXBZLH6m8vc8JeYHJsRpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jPO7tLb9Zv26ULvCNe9gEBJLKRweUO5lzACA/vN+XOE=;
 b=R4LOizovitdg/gd4QK75K191NJfBdjysRJbpkgJ9FLoABDNRSVj1dmQvPBJwNB6S3MPjxfUc8t7sYOQvtS3Kg0GQp5Oap0su2HLs9NwAo10ljzrm/neyRjxKtQJLrAEsQChR+HfWM0tjzfARHJvWoX8R/u11XF6pRHdELYcMVjwRbqfSAugjjTozmyhEwW6dffhxxp2wkcT2UoFu4KEq3PLUBTMe6lyIviE9faHBW7FkCUvNUJvg9zq0/DHWU9ejfxh9MVQ1j/YnbPgVid4tXwmmzjazdeARebbBQ7+835pF9KiG+Dm1JSqG6voTlMUx36O3GE+tZjsSu9qGVUNa/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4516.namprd11.prod.outlook.com (2603:10b6:5:2a5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 18:17:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 18:17:15 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next 12/13] ice: move prefetch enable to
 ice_setup_rx_ctx
Thread-Index: AQHa+RT/TqaMhZcAOkegzTDaTTZshrI8+o3g
Date: Wed, 28 Aug 2024 18:17:15 +0000
Message-ID: <CO1PR11MB508991AE916E5380262543C5D6952@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
 <20240827-e810-live-migration-jk-prep-ctx-functions-v1-12-0442e2e42d32@intel.com>
 <22ce29a2-a483-464c-8eea-edf7052534f5@intel.com>
In-Reply-To: <22ce29a2-a483-464c-8eea-edf7052534f5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM6PR11MB4516:EE_
x-ms-office365-filtering-correlation-id: 4e5aa551-cefa-4b3b-8c04-08dcc78da500
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MU9SYm02VHFmSFoxcURwRjVQdURVZkNTaTJCWkZpTzNkbHJhdHZUMXpPcC9H?=
 =?utf-8?B?dlhPRVRMZVZTNVp0aEhpS1pZVE14VEZpMzZ6c0dqS0Z1aE50RUswZjhQTzNp?=
 =?utf-8?B?VDVFOTRubFZqMkRCamxnOTRDakxvaWNrNStRMndJR0xiYjVua2V1OWJ2ZnlS?=
 =?utf-8?B?SUtRRkxkMEU4bXkwcXl2WjBPWVFHM3FUbjZDWTNKSmFqU21GZDgvM1ZjQkhI?=
 =?utf-8?B?R29jMEV4d0QraWFDeU9PUGlBaWdWSzRiNUt0S1JnZlUzYUdNOUU5NllwbVRC?=
 =?utf-8?B?cDRXa3hOWWtodjRZV2V6MVZ1YlNsWnNWaVh6eVhzVFl2LzdOWGtNaVBzQnh5?=
 =?utf-8?B?VEhMNnQzK2o4MnpsOGk5NE00Uit3aGlNclRTeGlXcW56b1BTYzBkZHlXZ1V1?=
 =?utf-8?B?ZGlJc0IvZmJMQlJ3WlBIMVI4OG5vbnhnemdxMFBSRTJlQnpVNW0wdmNBRmxI?=
 =?utf-8?B?K3JUK0UwRi8xVys3OFZrOHlMSlhESnF1OEcwQjlqMWNEcjZzTW1EcHNzQzBj?=
 =?utf-8?B?ZHNhcVQrbEdMOEpKazJtSFVyN21ybW8vRnNld0g1R3MxdE5Gd3Z4dUFndXpZ?=
 =?utf-8?B?dUl1d0hXT0dEVnlyTnUrcWZZK2NWK2wxY0ZhY25YbVZUNXZWaUFzL2kzQUJi?=
 =?utf-8?B?b2k3anV2K1lUVGJSdTF4Y0lxK2VnMCtweWd2UUNPaHl3NFp3blNSNXRiS0xw?=
 =?utf-8?B?bVNiVzFWMnRkdXpRaUxCZFAyRGxPV1JCTmJUYWRJK3l2ekc4S0xibnV3b2xu?=
 =?utf-8?B?bkZpcG9qdklFMDl3cVlYa1pUeVl4MUdMZ2tISzJnc3FydVJKYjhITUgwTSs1?=
 =?utf-8?B?ejNFNWdFTUtRQ0dlbHZVT1JjSjNOMnppNnlSVjdmODl1YTJMY3hLOTQvekNu?=
 =?utf-8?B?SUtHUlBUMXIwQmg0aGc4Ulc1UHU0a25XUVl0Rm5sWXovb0hGL05scnRJZlJC?=
 =?utf-8?B?S2JtTjFHSzF0akZ6dWpSU0dDYTdJTWVwMWk1OStiai9XeGZNYmVDZVZ4Zk9X?=
 =?utf-8?B?ZDdKMlBLSmlmZnJlS2M3K0Z6L0VWQ0JTT1d2alc1dFNTcElxQkh5QzZFTVBD?=
 =?utf-8?B?bDU1d2orZzNYZlVVdGZIcUtCQXZHc0JoWnZ3Y1N3TGFtN3BTc3VtdlJmY2Vl?=
 =?utf-8?B?MnE5aDZiL2NDa3hJbWNkakdYemt0RWZPa3pWL0tDcHQ4MDJtN3pRWEZmaHZj?=
 =?utf-8?B?a091OXBwMVF1OTREbHFmdkJSc1BtNjd5dkdUaG53cE1yamJ1UkxsSW5BREdG?=
 =?utf-8?B?bVcxM2JOZjZLREJVOGltVkhSYVljcml6MXM3ZUFleWk2SWQ5SEFrUXd4dFJl?=
 =?utf-8?B?NTFCc0w0OVV3ZDh0dlBpODdiMWJIK1ZERjdGZ0t0bEV2a0dqREJNKzhSNVlE?=
 =?utf-8?B?a0d4ak43Mk9XUnZKZlg4SlpsL3E3Zm9RWE5zYVg4VVo0VXpGdjczOVh5L3NW?=
 =?utf-8?B?VlRranZoUmZPRXVrVFZVMGRZYkFLZnZFNGNrMloxUlZSczcwNkFrQk9LSXFj?=
 =?utf-8?B?SHY3bUxiTi9QWDI2c2k0NVdSRGU3L2lXSy9LcS9BMjRIN3Z6TjJkY3V3d1dq?=
 =?utf-8?B?bURrWWk2SldpVHMxU0RnQ3lzVW1lVlZPVjE5ZC91N0NmL1FiN1A2TWJSVG0y?=
 =?utf-8?B?bVlFc2luR0xCN2Rqb2YzNUV0aHZzYTd4UGlubXBJdlY5QWczRHhWTVF5Zjhn?=
 =?utf-8?B?czA4ditNWTFQU2FTNnRpcExVbmlUTDF6VERzRGI0cWdTWTQ1WktEdUhMSEVV?=
 =?utf-8?B?Vm1EQkRPUjRCSy9DRU54eTltRys3VnE1QXNiYVRzUXhoRFBtQWpkRDMzVDdz?=
 =?utf-8?B?QWFKWHVYZXp0ZkxPUDVhZGZyb25IQTRLakdhb1p4eUlCOUpPb05GQXJzTjU1?=
 =?utf-8?B?WmVFZkRJRGJlRXlRbklaeFVFb2RRczI3WXh6WHpoYmV2aVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXVtSisyLzB3M05sUUlsTmlScFkyN1NLTkhLTkpPLzNEa0Rhb2VRVTdsSTFz?=
 =?utf-8?B?ZWxOdzdGM1BkQm4vVmt1OWE2UnFnRlc1eXJNOGxxVlBmRG9CaFJHeHEwNlFq?=
 =?utf-8?B?MHlyR2VaaVN5TjM2aFhJU1QydkcvR1hMK3pBa1NDNWlQU055V2p1UE5meEZs?=
 =?utf-8?B?cSswNWQ1ZnBWYTNYY2F1N3FNN1U1TWtiejZlQzM3YmlwWlpoa3pTNjRpUC92?=
 =?utf-8?B?SjgyWTdPNUppWTdRbTg0WFFTVWNQZENBRGl6Q21BdndDTGExWU1uZVRzWXR0?=
 =?utf-8?B?Q1F1aVd4b2ZqazZBaHl3R3lIZFdPNzBqcUoweDhoZFNaTVNMU251NFBRQ3RV?=
 =?utf-8?B?bTBJRzFpdVdnM0Y2akdualdtMXJWTjY5Sm9LZmdVcGliUW9OdHo0NkpYZDlU?=
 =?utf-8?B?eEl6R1Z3cE1lNDZvWEkvWVF3MGxpZXJrWWEwRXczeEhRR1NCcldZcmJmT3Y2?=
 =?utf-8?B?eDJBUzg2OW5vSnRvZ0ZYbXVLVUJobkFYVDNWTkF1T21lKys5dkFlc1ViNXlN?=
 =?utf-8?B?aWZVcGVqQWdWS0JWUUcxYlFYSUIwemhJRVdwTzIzaW1SYVZRaW5ZTHlFd2lY?=
 =?utf-8?B?cmgwQ1pRQkFLMCtGMnR2SlhJOUkydUVhY3dJRW1DMml4cVMzL0h6aEJaQ1pk?=
 =?utf-8?B?T2J6WjMyeEtsakxSdStKNCtBOWNKTUllcUgvTy9URkR3alJBek1xdWxvcith?=
 =?utf-8?B?RW80MDZqdDYwdXF4dG8yNlBaemRYendQY2xkVWR1aERJa2lLdi9meXdROVNK?=
 =?utf-8?B?R0E1cnJSSDJGRytBQUFkQ0pCdDlHVlhuN1RuKzFqMWRQRDNIcE5iamdmTTJP?=
 =?utf-8?B?cU1BTGhJeUZhTWtRVkJsTHRCMXdJVzYzTm5jRnJCR0NqWEMvalExLyt4dzFk?=
 =?utf-8?B?dVhNeGtwOFRmR3NiL0dOblgwUENTZGt4bkRyTHlaMTBwMGVJYThSYVVjV2Vu?=
 =?utf-8?B?QVVUNTQwZklQbUJ5ajdxdTMrc250UWtBYlFSUUQ4Q0JHbXFkWmhic1cwVFow?=
 =?utf-8?B?MHJKK1ExcnNKVS9YeEhCSTV3bW1pWWFyRElYOWhyYWZHUmpybWh1U3d5Wkcw?=
 =?utf-8?B?OHI4TGJuZDg4SEdVZXo3akpCdUhZNzBYait1UnRsTk0vRThRdjlGb1JKR1Yx?=
 =?utf-8?B?WUUvZVlzaXYxWXhTaERXelZReDFCTXBoL1NYc29Gb3hzN29pMWVBbnRuL0FK?=
 =?utf-8?B?SEt1S2t1QjkrYlI5eFhqbnZ0a2d1VDAwbTZoTFhYL0d3RzUvMjZZM05KRFBj?=
 =?utf-8?B?WXJaRVdYZW5WMnROT1BnV1g2ZWZmOCttR1plcWdUTTE3aE1kOUVySXRnZDdV?=
 =?utf-8?B?ZUY1M2lFOFpydmFZa2pCZDVaSGpod0xGcXhaaVBUbE9vQ3RlcEZMRE5razFR?=
 =?utf-8?B?MXV2QjdTdjI0SzByN0tTOWRjUVNOeG9hZGp2NlhBTXE5L050NlRLMFN2MU1W?=
 =?utf-8?B?L3Zxb1NrcFIvdXVjNWg5UW9jVVVha1lHOVZCKzJMNUgrMVVXN2JPTnJoc0lS?=
 =?utf-8?B?L1NicUVKSkFyNFB3clFFRDNxSHVJc3BmazlKOE9UeGtrZEIzSzU4YmVMYy90?=
 =?utf-8?B?ZGNRNTYwNjdSQ1IzQzRNc1o5V3JUaFRUaWl1YmtSQ0VKWXR3eDJVb3JSY2NU?=
 =?utf-8?B?cW5QZTlPMVNHWk9wNVhoSG9pbFhhUGR2eXAyc3N6cFJQcGgwWXdrcktjZDgy?=
 =?utf-8?B?WDQ4OWd4cVpITTlaUUdNWjMvSWpydVlvbmp2ZXhvRWswcTE3NkhOWVZBc0xv?=
 =?utf-8?B?Z3Era2VmRC9oN1l1ZUliWmQyWXR6ODlLM25PdjhuWHBYeHBzMjJEaCs1N0RF?=
 =?utf-8?B?YU00VkNWKzQyR1U2UFJicVpsbG1scFRSdTJOak95K1hhRlkydzhZeFFpZkor?=
 =?utf-8?B?QUZLWWtkYVNWTGJQUzNOWDBhTGNVdHAzWTVvYndYTGh3dXRGTUc1Mk9ScVhn?=
 =?utf-8?B?QmxlenB0aWkwTnNveVdCWVJWWE1VYTZJVklsVjBETkxsNnR4bHZsQU9xV3ox?=
 =?utf-8?B?TGVEUHhKek9HeUY5UmtyMmN3Z1ZvS3p3VDQveDJUMjJTYzlmbTdnMlJoSGEz?=
 =?utf-8?B?akZCUDU3TzMwVkR5MkQxVnRuVnBFWnJMck5GTWRNUkkraU84TWVKMmUzNHpX?=
 =?utf-8?Q?Zx3+IrgL7YZ5BQUwWb/2kQ/mD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5aa551-cefa-4b3b-8c04-08dcc78da500
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2024 18:17:15.2214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fkHHnyfziddy4sczUE7SDCUT4Kt3WkcotNtJVRLfK268XsTuwOkp6IPmSbfP6kTMFRefkbK/0vTWaZd1UdB9GHReYdNmc20rnDPWv6l4534=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4516
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724869040; x=1756405040;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jPO7tLb9Zv26ULvCNe9gEBJLKRweUO5lzACA/vN+XOE=;
 b=Cj0kK5z9AQqtAKFROFaTS4jBqcKQvATZyvJxjxxPg2+EvTodQfYszFg2
 GDfYCY0ju2TxMJTG9XvA/AFTDnI016anXtp0b2nOIn/YiymWI4U6aoRpV
 XGQnzOqGIRTm40G/2VnBhmo1PKOsEaU2Y78JLJHpNDv8N3mEcyJ+RuVag
 mLG+lAX1tlbBYeiG36YB+oeHwL3Ml54C7pvIlaTR9vOjPO4ri6iQ4F3rC
 JGVCwqGdGtRDEPrzTxWKQFgmmNYYdGQisHAe9iMPhSXP5jVkgE3dh6wfM
 aY2Df7KI7pCIiqyWMaqevEccBlOdCYs2DXpX3uoNIgO+HzSXxyl3UfJ0x
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cj0kK5z9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 12/13] ice: move prefetch
 enable to ice_setup_rx_ctx
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgQXVn
dXN0IDI3LCAyMDI0IDExOjM5IFBNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2Vs
bGVyQGludGVsLmNvbT4NCj4gQ2M6IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxp
c3RzLm9zdW9zbC5vcmc+OyBWbGFkaW1pciBPbHRlYW4NCj4gPG9sdGVhbnZAZ21haWwuY29tPjsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSZTogW1BBVENIIGl3bC1uZXh0IDEyLzEzXSBpY2U6IG1vdmUgcHJlZmV0Y2ggZW5hYmxlIHRv
IGljZV9zZXR1cF9yeF9jdHgNCj4gDQo+IE9uIDgvMjcvMjQgMjM6NTIsIEphY29iIEtlbGxlciB3
cm90ZToNCj4gPiBUaGUgaWNlX3dyaXRlX3J4cV9jdHgoKSBmdW5jdGlvbiBpcyByZXNwb25zaWJs
ZSBmb3IgcHJvZ3JhbW1pbmcgdGhlIFJ4DQo+ID4gUXVldWUgY29udGV4dCBpbnRvIGhhcmR3YXJl
LiBJdCByZWNlaXZlcyB0aGUgY29uZmlndXJhdGlvbiBpbiB1bnBhY2tlZCBmb3JtDQo+ID4gdmlh
IHRoZSBpY2Vfcmxhbl9jdHggc3RydWN0dXJlLg0KPiA+DQo+ID4gVGhpcyBmdW5jdGlvbiB1bmNv
bmRpdGlvbmFsbHkgbW9kaWZpZXMgdGhlIGNvbnRleHQgdG8gc2V0IHRoZSBwcmVmZXRjaA0KPiA+
IGVuYWJsZSBiaXQuIFRoaXMgd2FzIGRvbmUgYnkgY29tbWl0IGMzMWE1YzI1YmIxOSAoImljZTog
QWx3YXlzIHNldCBwcmVmZW5hDQo+ID4gd2hlbiBjb25maWd1cmluZyBhbiBSeCBxdWV1ZSIpLiBT
ZXR0aW5nIHRoaXMgYml0IG1ha2VzIHNlbnNlLCBzaW5jZQ0KPiA+IHByZWZldGNoaW5nIGRlc2Ny
aXB0b3JzIGlzIGFsbW9zdCBhbHdheXMgdGhlIHByZWZlcnJlZCBiZWhhdmlvci4NCj4gPg0KPiA+
IEhvd2V2ZXIsIHRoZSBpY2Vfd3JpdGVfcnhxX2N0eCgpIGZ1bmN0aW9uIGlzIG5vdCB0aGUgcGxh
Y2UgdGhhdCBhY3R1YWxseQ0KPiA+IGRlZmluZXMgdGhlIHF1ZXVlIGNvbnRleHQuIFdlIGluaXRp
YWxpemUgdGhlIFJ4IFF1ZXVlIGNvbnRleHQgaW4NCj4gPiBpY2Vfc2V0dXBfcnhfY3R4KCkuIEl0
IGlzIHN1cnByaXNpbmcgdG8gaGF2ZSB0aGUgUnggcXVldWUgY29udGV4dCBjaGFuZ2VkDQo+ID4g
YnkgYSBmdW5jdGlvbiB3aG8ncyByZXNwb25zaWJpbGl0eSBpcyB0byBwcm9ncmFtIHRoZSBnaXZl
biBjb250ZXh0IHRvDQo+ID4gaGFyZHdhcmUuDQo+ID4NCj4gPiBGb2xsb3dpbmcgdGhlIHByaW5j
aXBsZSBvZiBsZWFzdCBzdXJwcmlzZSwgbW92ZSB0aGUgc2V0dGluZyBvZiB0aGUgcHJlZmV0Y2gN
Cj4gPiBlbmFibGUgYml0IG91dCBvZiBpY2Vfd3JpdGVfcnhxX2N0eCgpIGFuZCBpbnRvIHRoZSBp
Y2Vfc2V0dXBfcnhfY3R4KCkuDQo+ID4NCj4gPiBGaXhlczogYzMxYTVjMjViYjE5ICgiaWNlOiBB
bHdheXMgc2V0IHByZWZlbmEgd2hlbiBjb25maWd1cmluZyBhbiBSeCBxdWV1ZSIpDQo+IA0KPiBU
aGUgY29kZSBpcyBmaW5lLCBidXQgSSB3b3VsZCBkcm9wIGZpeGVzIHRhZy4NCj4gUmV2aWV3ZWQt
Ynk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gDQoN
CkkgY29uc2lkZXJlZCBpZiBhIGZpeGVzIGJlY2F1c2UgSSB0aGluayBpdHMgZXh0cmVtZWx5IG5v
bi1pbnR1aXRpdmUgdGhhdCB0aGUgY29udGV4dCBpcyBvdmVyd3JpdHRlbiBoZXJlLiBJIHVuZGVy
c3RhbmQgdGhlIG9yaWdpbmFsIG1vdGl2YXRpb24gKHRoaXMgd2FzIGluIHNoYXJlZCBjb2RlLCBz
byB0aGlzIHdhcyB0aGUgd2F5IHRvIG1ha2Ugc3VyZSBldmVyeSBkcml2ZXIgZGlkIGl0IHJpZ2h0
Li4uKSBidXQgaXQgaXMgc3VycHJpc2luZy4NCg0KVGhhdCBzYWlkLCB0aGlzIGRvZXNuJ3QgZml4
IGFueSB1c2VyLXZpc2libGUgaXNzdWVzLCBzbyBJJ2xsIGRyb3AgdGhlIHRhZy4NCg0K
