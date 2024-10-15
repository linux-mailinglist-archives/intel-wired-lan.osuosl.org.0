Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF82299E4FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 13:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7016840569;
	Tue, 15 Oct 2024 11:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgF2Qgz5-mPM; Tue, 15 Oct 2024 11:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9040040556
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728990322;
	bh=OWHiDd7dy36og2+WIM+P+mZlATwcvNoomQ5XOuPFKjs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qDKtZ3gqE8nMo9bGUyiEalanSqRXSSbMbMMeIyLzYaTa2sTrDih/ZkySOpexpevgG
	 0vtxeV4LvXL3KZRpiBVQTocoyQcMLw6rT3VnkWs2uYWVvJ4eebe3uQWNUWHf6UUf44
	 UM7OcXmvO5X6MteqqjEJNGqh2zIGvpwZ8Lx/6QXp5ThFPN+Aclti+o7GpWKgKeENww
	 XZXbtprKNbW3r+isILDMfwNUOgOMygqq3hSt+uVIiVv64c3wGdMMC+hG5tgxmKfeYo
	 vwcagPHBY11BcZRasqhIfAYcBz8xk2o2rxLbcV0azwZmFhl8N6xPl1gk2nBtZUh8Ur
	 VU0fDaQo53n+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9040040556;
	Tue, 15 Oct 2024 11:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FBD91BF853
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 11:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F155240452
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 11:05:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VliGEZnaLRLg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 11:05:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 377A740254
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 377A740254
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 377A740254
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 11:05:17 +0000 (UTC)
X-CSE-ConnectionGUID: nqKhTu/MRp6Zj8R69RuSBg==
X-CSE-MsgGUID: U/R+vUwjRu2vbfPI5Ye7RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="32294782"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="32294782"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 04:05:11 -0700
X-CSE-ConnectionGUID: ZGMwZJpuSGOC2PJpnAvdGg==
X-CSE-MsgGUID: Ho0vu6TdQs2+4/5Lh3kfCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="108587711"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 04:05:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 04:05:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 04:05:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 04:05:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 04:05:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wS+cdvOgf+boDjZcpqcd7CUs0pIlMNe507LGyz2oAb4Lfol5zfvTU4rd8uYXYZaX5NG0OG8ZsxwSnHAWXXD5L3/AyjdvGUbcQlquB+6Or7SVFAI9fzE6uZSZ8cnUtKUfa4qU6hcOYanqwzvgRgjZQT9z3Bkj+0RuurrfcrrEXx6cH/pGp+VDcq5IXndnvO39ZB42kxL1hzLG/DwQ5lzZ825WB3iF92VtFwE4PJqyIkqFxiiQo44vP212r6vN9fkANBtASG8IQQ1saM8mQq7J6momDWPHbNdSTA/aHxcNo3rpNI6w3hShBYMSkdzymlbjl9hLniA1W/Z/VnQO3BOCmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OWHiDd7dy36og2+WIM+P+mZlATwcvNoomQ5XOuPFKjs=;
 b=Ct4JY6dH7KXyGvj+vzUqPIa3C1y0MO0At/OTbFWZ1yRhHwo3muWXAmZaarBxjy75iQYy39hHmoALVEClUW2q2Wb897052oGrU6ODHwh1QyZ11QThIyzdKMAZTP6jHp2yeAb5shaVSUBGSnI5iY6iBzTjg7BquX7TwuTLCpPJkI2S/S5dZeyBvTCWvflvWCO/1RYtydjnIG7Vg5YIhveYErkVRI3rmLWxF00wrZwcHVpzuvTsq/EHB/OAixgb+QhLrkOI0NUwjiusdH8YnoOJ2toPWk74t30Wom74RmWumh+5GZTgzeMLe8T4VHunxLnhnPm+T1jQMXNlJSrq7v+fiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by BN9PR11MB5321.namprd11.prod.outlook.com (2603:10b6:408:136::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 11:05:04 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 11:05:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
Thread-Index: AQHbHtCLpdcGfqFUkka27Ty2B67vdrKHeaIAgAARUzCAABKGAIAAByIA
Date: Tue, 15 Oct 2024 11:05:04 +0000
Message-ID: <SJ0PR11MB5866C7F03A6F794EEDC2295BE5452@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20241015070450.1572415-1-aleksandr.loktionov@intel.com>
 <011cfa1f-d7df-4d38-ba5d-7820176ebf8b@molgen.mpg.de>
 <SJ0PR11MB586684C1B9995B605D83CF71E5452@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <4435dade-5c41-43a1-aeab-58e2d262545f@molgen.mpg.de>
In-Reply-To: <4435dade-5c41-43a1-aeab-58e2d262545f@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|BN9PR11MB5321:EE_
x-ms-office365-filtering-correlation-id: 828dc84f-772b-4cc3-9f3c-08dced0938f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b2NmN2xMN1dZSUpjdXJ6SEdLUUdhcVFXazBzWWlVQUJWb1RDVFplTmxRdHdp?=
 =?utf-8?B?aHo1QlErdWNraXZZUG5uc2tqZHEzbDRTUzFNK0pJcDFvQTdkQjUrcHc4ak1E?=
 =?utf-8?B?UmZaTjl1dDNRRTcyRXRoVDVpV282YWI4azJieWxqK3NRVy8rUkdlTUxOZ3ZI?=
 =?utf-8?B?UktFbXZnZUtTN2pHTXJSZUEvc0JxNDVYdFk3ZjdVMHc1dGd0dGJDb2dNZEdj?=
 =?utf-8?B?b1ZSdjRYUU0rVmNldFd1VjY4d0Q1UjVxL1pQeEhXUlYyWmpvV3RPcmlyMVlO?=
 =?utf-8?B?a3k4T3hwWXpUZDh5ZUNXb1ora1praFVLNkhSZ3EySElCakFjMXR6UExaRThJ?=
 =?utf-8?B?YlJUS2lkRzRMNDlNN0JaSzE3MFVOUmFpcmcwUXI4NFlIVUQvcXpVaEQ4Wmox?=
 =?utf-8?B?RzZURWJWdENHRnVQczdIbHlxUFlpRVZNbis0TEZFRHplV2NqVTVHOVRCTXJ2?=
 =?utf-8?B?eXdwTk93cnBic2RPY0xjSWVWVkphUUhMbUNldzlsUXNJQUg5ZElaNlQyQ3Qx?=
 =?utf-8?B?QzdXSWMrVFN5U05pU2tNaVYvUG1jcll1dHZBdGNvNEFUT29mZ1k0U3pDU2Vq?=
 =?utf-8?B?aUJFL1hGTUxIeFVJRTR3VVRFcGtXKzE1dGx4V3NFSXlPVmI0czJhY3pHZm1k?=
 =?utf-8?B?cnRIcVhhZ1JiTC9idmtabTNtdXgzem9PRzN2UEQ3dGRoQWM2NlduRkY3TXNi?=
 =?utf-8?B?YURtclBBY3FBT1hTQ1NOeTFzM2xjeXJ3RjFMSWlmWmxseHpLOGZ2aldCN0ZG?=
 =?utf-8?B?d3FCdkZBTDlsVUlIcmpZOXRqMGM5ZUluU05heUx2MCtKVnRkdGQxWEVFbm5K?=
 =?utf-8?B?K1lKOCtlUU1IcEtlZThOdnBMb0xJaDc5L2RNOVlycmxZOE1DWVZVL1dHT3dG?=
 =?utf-8?B?U0JSSlVmbEVZTFB5S1BXNEszbU9IMzhjMTlHd2s5M1oycVUrUXQvL2s2NjIz?=
 =?utf-8?B?Zjl2djBhTTV6c05kUG5iTHZXZVdwMkJ1cURvSjNOKzNvMFdxQ3IvZm50dWpy?=
 =?utf-8?B?TVhpMmllZmZGcmhISjllMmNpaGhMckZKdVhCdE9kQkRkSzE0QmlUUHZReUNt?=
 =?utf-8?B?S0drOFBlbFBydHZSVDlFcTY0cnNuVUlqOHNPR0pWcFN4WTZxbnBETXRPc0I2?=
 =?utf-8?B?SjlFSTVvQkpPbGhLV2lwSWZLTWxuNzVNODVlMnRNUlZCcFZQR0tLVlR5YTFE?=
 =?utf-8?B?d1ZKZTlSYS8xMFBsamVYb1hvMVlFdGtiNVpjUHYvRFdOOGExanlxWldpdEIx?=
 =?utf-8?B?QThPcmdGdmJQMjNxVnZQWVV4TjQ0Y0MzbVJudmF5WnlIeG5SeUtWcTJmcCtx?=
 =?utf-8?B?VG51Q0RiZ1J1UVJFS0EydzlEMVdHZXE1UkwrOTJreFRLdWxVcVFVTVRSUjA2?=
 =?utf-8?B?RVYvNTlCRDdyRTV0Y09KZWFTYUp3eEtZcU13akxvS0tBNjQwRjNrK1dVNWdr?=
 =?utf-8?B?NjlxKytPY3BvSGtlREI5bFRGSTlpQ0pWd2o1ci90M0R6U2dTWWIwV1locGxi?=
 =?utf-8?B?V2tuTUZRbEVjOWRMWG1RalZCVFZ6eFB3RE1mWGt1QjZMSVZzRGgrZ0JDMUtx?=
 =?utf-8?B?REowSXhYK0dQUy8zT3B6YlJ0Q1RteC9sSVJUZld0SG40SlUyL1ZqdUUxRUdv?=
 =?utf-8?B?ZmJzTjJDS3Voc1FGaVl4clJ5Tm1OYVpwTHF1dkFEbGtPemlqTTlDb2NWSDZD?=
 =?utf-8?B?bzJmRFBOMUZyTHY3elYvSVBjendYSmpNYnFNdXlNdkdVOGhWTGJZcWtmQkVq?=
 =?utf-8?B?N0x3bFBxYkF5MGsrK2M5U253dTkyMjZWMFpHM2M2SE03Zm5zaWIwOFJORnJt?=
 =?utf-8?B?UTJPYXBvMmxCRTBxb0JhQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3JFdnJrYnBkaS9wZW1CWW1FeGsvWlJBMWpiRGhNUURaRUdtd2NwYkh3Umkv?=
 =?utf-8?B?NHBIKzN1SXdNV3BxVFpqSWs5OTZoSmplRGI2Z0t0M04zWUV3bWRhZDcvRTFK?=
 =?utf-8?B?ekpqaGNPRTg3V05FRlZIdU9EUm1uaVY1UXF4SFVWdXJQV1V6R2dOWEZIb2FE?=
 =?utf-8?B?ajB5eUwzVlhRSkZEd20yeDY0dnBtOWg0NFJmUFc4dVhWVzEvcjNibXhYTkg2?=
 =?utf-8?B?Tmlza0xlaG1mVEJtMndUdlVvNFNhdzFMWVc2L2dvZDdRaGVJbTZkRzA3TEI0?=
 =?utf-8?B?UURvbGNXNEkrd2M3bUN6MlV1WVZzMHBVRGlDK29laVRRSC9xdHVRc2xHZk1t?=
 =?utf-8?B?ZnpFOHJwOW0zT3V3MTBpR2FjMmpGSEZJZk5ZRXE2dDlUWHFmTmdUU0gxY2lr?=
 =?utf-8?B?b3Bua0xEU3p3UnE3a0UwWlhmSDJBTkZmcE52cllsSWNqTGM4QkRVOURxWUl3?=
 =?utf-8?B?T28rUXNMU0drdU1Dem1iSlgzWTI5UlVsR3hZd05sb1VncFJyRExJckRydEw2?=
 =?utf-8?B?Z0QyZFg4U1NRNG9rYlFOS2RpZFkwOGdBM1RNTnA5M1ZaWnk0dlozZmpDQjFy?=
 =?utf-8?B?U3ZxeWRKbHFTZ3NlUkdCeXpGWGpvRWdlR0xrWWlDM1UyeHRERCtVMmN0aHp1?=
 =?utf-8?B?N01CUFpxUEpUc1JiTHR1VHdVb2V5S2ZMTXYrcExFZTdCQ3hUVFlCKzFZZWov?=
 =?utf-8?B?RlFIMTNyOUtFTkZPK3IwbktjZzdwK2VOM0xtN1JmN0F1Yk1PYkJHNnRjZFlZ?=
 =?utf-8?B?bDdOdXdIQkZHeXNjTVRjSFFyS0ZpNXArV21EY1NZWG4wY3ZlZi9QaFFKUFFP?=
 =?utf-8?B?VnEvRzlMK1ZxSG9uOWlqeFdxS1plRUZIQzNFc0dsdnB5TngwL0FYRVpGUnEw?=
 =?utf-8?B?L1lkakxEeGgwUkdRajRmM29qemRVano0enlWWDh3eVNPNW1sYTY0TVppQXhy?=
 =?utf-8?B?c1NaV3dPYkN1M0E4WlhKcXdRQXM5cWgyWDJpZGJnclhvWG5jT0FJYncxQkF4?=
 =?utf-8?B?c0poTHA5elIzOHZ1UEQxL1J6aWhMd2s0REdPNXd5cldLUU5zbng1dXg1VW15?=
 =?utf-8?B?NUw0Vm4xdEE1clhLWm9yUTdycmp1K3A3L2t5N2gyRFJ2bHhoV0RVZENzSVZN?=
 =?utf-8?B?NFFvZ09DV0F5cW42UkJuWnVaWnNySGR3anloRHlXQ0JiZ0U0RkxZaHZWMGlI?=
 =?utf-8?B?c01SU0ZsS1h3TWJwa0NyTlBnMG5Ob1ZvZ1lQdE16QUNvc09vN01XdmFvUWJh?=
 =?utf-8?B?Nk5uTHRKQVpCOVBXWS8vN21ERWZIZHBONnpuRHRZRWNRUncremtRTGdpNDRr?=
 =?utf-8?B?U25jS2tJMTVTQUl4N2VVcU82d0czK2ljbmNVczkrMEx2anN6WVYwMjVrenAy?=
 =?utf-8?B?QXlrZHBUZytEeWRha3BGZWVLT1pabzJzb1lFaG1kd1dGRWlaN2xheFdtNDJW?=
 =?utf-8?B?MlZySkRsMENucGhZVDUwRDk3MkFxZUI4RU4xcFQyblRoYTZNTFhVVnpYOFlr?=
 =?utf-8?B?S1h6TlZORkorUGpnS3dQQWJUK2Y0OVFyMTRGSkNjcndZV1FmUmQrNjNVR0la?=
 =?utf-8?B?bG5tQXJmRDhLUVV3V1BnalNldlFTTUNPL05SUENvanA5R1ZuaFdEYUVsWUpr?=
 =?utf-8?B?NmZScmlGZ2JaekhhVTFmSyt4UlJPeHhqUjk5UlFQM3VNek9sUmNWQnBBWk8r?=
 =?utf-8?B?cit6SExVQlRFY1JiMjNOc1pXOXNxOCtrOVdQMDI5d0x1WWZtWDlFcGdwWCtE?=
 =?utf-8?B?VGM2SDkrUXl2YjhlY2tPM1hZcDAzUklJdzUzTHh6NnJNTUxsMWlTWUcyQXF6?=
 =?utf-8?B?NXY2TVJqU2tMQlVRMllHc2VFcllyMUljUENnTEhockYzNm9ldjk3Y3dnZm15?=
 =?utf-8?B?VGF5U1NKZHU3dmZPSG5wSE11UTdaNWxJejJHSUxHR2pIcFZnMUc3d0Y0b09q?=
 =?utf-8?B?OEUxejdsSmdBdWVMbHk5MFkwWGRsU0tSQWtqL01CTWs1MmdMTDR5S1Jaa0Rq?=
 =?utf-8?B?NThHTjlMZzZSVEJRaTRMb2k0K2Z3TGNxSzVaQmZRRUoxZ29lODVvYThTbmxS?=
 =?utf-8?B?KzVPUnVjR2k5UXpXclJnK1NXanFXSjh0WXB3ekFEeDIrWWJCbG11VEF0T0or?=
 =?utf-8?B?TFB1K1lreG5tc0pQVXFPOG9IWTdvSCs2VGphcVpualBCblo5eDRMOUVsUnVZ?=
 =?utf-8?B?RXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 828dc84f-772b-4cc3-9f3c-08dced0938f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 11:05:04.5157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qWyK8R8s2DklYOxJ6hk+NAnEdpIZah3fE8OWrfClXAs4y+Kw8qvGsGFAP5kPaJNflacBKydeLdgArfMcThvkWxVIaEypEbSyaTdJi3v3E7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728990318; x=1760526318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OWHiDd7dy36og2+WIM+P+mZlATwcvNoomQ5XOuPFKjs=;
 b=WgeWc4sm6wl7UvkRalRsxb+YIFFV6YGcYTl03B1TLoKOCT4SzH17l5Fd
 v8CcVOLomyfzCOIIoJLog7RYDx4SJ5MivRp6FX7Rc8H9HeAOBELk4tvo4
 DL9Onw87lrUxPn/I7XVMPFG4zl/Xf96xaelEyQV2R3FpRe+ZGgilIzyZf
 uCS8jJ3m/N6NyO4aTtkG9BDiwHoZ8F2/MIoQ5IsRvbqCmDV5HkqggGGtU
 UdEdxOIWWlSCkbgx6vFx+yk7pCOVT7FGzpLhh4HkYU1v5CMxGV9DkRhhg
 z+MPMyLU7NuiHRK1JkFRM88EObpwDQ+6iI4AOlQGCEbmjhFjZjnvfvsAv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WgeWc4sm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAxNSwgMjAyNCAx
MjozMyBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXll
biwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV0IHYxXSBpNDBlOiBmaXggIkVycm9yDQo+IEk0MEVfQVFfUkNfRU5PU1BDIGFkZGluZyBSWCBm
aWx0ZXJzIG9uIFZGIiBpc3N1ZQ0KPiANCj4gRGVhciBBbGVrc2FuZHIsDQo+IA0KPiANCj4gVGhh
bmsgeW91IGZvciB5b3VyIHJlcGx5LiBKdXN0IGEgbm90ZSBhdCB0aGUgYmVnaW5uaW5nLCB0aGF0
IHlvdXINCj4gbWFpbGVyDQo+IHNlZW1zIHRvIHdyYXAgbGluZXMgd2l0aG91dCBwcmVzZXJ2aW5n
IHRoZSByaWdodCBjaXRhdGlvbiBsZXZlbC4gSXTigJlkDQo+IGJlDQo+IGdyZWF0IGlmIHlvdSB1
c2VkIGEgbWFpbGVyIGZvbGxvd2luZyBzdGFuZGFyZHMuIChJIGtub3csIGl04oCZcyBoYXJkIGlu
DQo+IGENCj4gY29ycG9yYXRlIGVudmlyb25tZW50LCBidXQgb3RoZXIgSW50ZWwgZGV2ZWxvcGVy
cyBzZWVtIHRvIGhhdmUgZm91bmQNCj4gc29sdXRpb25zIGZvciB0aGlzLikNCj4gDQo+IA0KPiBB
bSAxNS4xMC4yNCB1bSAxMTo0NSBzY2hyaWViIExva3Rpb25vdiwgQWxla3NhbmRyOg0KPiANCj4g
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gPj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAxNSwgMjAy
NCAxMDoyNCBBTQ0KPiANCj4gPj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBGb3IgdGhlIHN1
bW1hcnkgSeKAmWQgbWFrZSBpdCBtb3JlIGFib3V0DQo+IHRoZQ0KPiA+PiBhY3Rpb24gb2YgdGhl
IHBhdGNoIGxpa2Ug4oCcQWRkIGludGVybWVkaWF0ZSBmaWx0ZXIgdG8g4oCm4oCdLg0KPiA+DQo+
ID4gU29ycnksIEkgZG9uJ3QgZ2V0IHlvdXIgcG9pbnQuIFRoaXMgcGF0Y2ggZml4ZXMgYnVnIHRo
YXQgY2FuIHN0b3ANCj4gPiB2ZnMgdG8gcmVjZWl2ZSBhbnkgdHJhZmZpYyBtYWtpbmcgdGhlbSB1
c2VsZXNzLiBUaGUgZmlyc3QgYW5kIG1vc3QNCj4gPiB2aXNpYmxlIGVmZmVjdCBvZiB0aGUgYnVn
IGlzIGEgbG90IG9mICJFcnJvciBJNDBFX0FRX1JDX0VOT1NQQw0KPiA+IGFkZGluZyBSWCBmaWx0
ZXJzIG9uIFZGIFhYLC4uLiIgZXJyb3JzIGZyb20gRi9XIGNvbXBsYWluaW5nIHRvIGFkZA0KPiA+
IE1BQy9WTEFOIGZpbHRlci4gU28gSSd2ZSBtZW50aW9uZWQgaXQgaW4gdGhlIHRpdGxlIHRvIGJl
IGVhc3kgZm91bmQuDQo+ID4gSSBkb24ndCBhZGQgYW55IGZpbHRlciBpbiB0aGUgZHJpdmVyLCB3
ZSBoYXZlIHRvIGFkZCBvbmUgbW9yZQ0KPiA+IGludGVybWVkaWF0ZSBzdGF0ZSBvZiB0aGUgZmls
dGVyIHRvIGF2b2lkIHRoZSByYWNlIGNvbmRpdGlvbi4NCj4gDQo+IEluIG15IG9waW5pb24sIGhh
dmluZyB0aGUgbG9nIGluIHRoZSBib2R5IGlzIGdvb2QgZW5vdWdoIGZvciBzZWFyY2gNCj4gZW5n
aW5lcyBhbmQgdGhlIHN1bW1hcnkgc2hvdWxkIGJlIG9wdGltaXplZCBmb3IgYGdpdCBsb2cgLS1v
bmVsaW5lYA0KPiBjb25zdW1wdGlvbi4gSSBhbSBzb3JyeSBhYm91dCB0aGUgY29uZnVzaW9uIHdp
dGggbXkgZXhhbXBsZS4gTWF5YmU6DQo+IA0KPiBBZGQgaW50ZXJtZWRpYXRlIHN5bmMgc3RhdGUg
dG8gZml4IHJhY2UgY29uZGl0aW9uDQo+IA0KSSBqdXN0IHdvbmRlciB3aHkgZG8geW91IGluc2lz
dCBvbiAiQUREIiB3aGljaCB1c3VhbGx5IG1lYW5zIGltcGxlbWVudGluZyBhIG5ldyBmZWF0dXJl
Lg0KV2hlbiB0aGlzIHBhdGNoIEZJWGVzIHRoZSBidWc/IElmIEknZCB3YW50IHRvIGFkZCBhIG5l
dyBmZWF0dXJlIEknZCByYXRoZXIgc2VuZCBteSBwYXRjaCB0byBuZXQtbmV4dCwgaXNuJ3QgaXQ/
DQpGb3IgbWUgJ2ZpeCByYWNlIGNvbmRpdGlvbiBieSBhZGRpbmcgZmlsdGVyJ3MgaW50ZXJtZWRp
YXRlIHN5bmMgc3RhdGUgJw0KQ2FuIHlvdSBleHBsYWluIHlvdXIgc3Ryb25nIGFyZ3VtZW50IGZv
ciB0aGUgQWRkPyANCg0KPiA+PiBBbSAxNS4xMC4yNCB1bSAwOTowNCBzY2hyaWViIEFsZWtzYW5k
ciBMb2t0aW9ub3Y6DQo+ID4+PiBGaXggYSByYWNlIGNvbmRpdGlvbiBpbiB0aGUgaTQwZSBkcml2
ZXIgdGhhdCBsZWFkcyB0byBNQUMvVkxBTg0KPiBmaWx0ZXJzDQo+ID4+PiBiZWNvbWluZyBjb3Jy
dXB0ZWQgYW5kIGxlYWtpbmcuIEFkZHJlc3MgdGhlIGlzc3VlIHRoYXQgb2NjdXJzDQo+IHVuZGVy
DQo+ID4+PiBoZWF2eSBsb2FkIHdoZW4gbXVsdGlwbGUgdGhyZWFkcyBhcmUgY29uY3VycmVudGx5
IG1vZGlmeWluZw0KPiBNQUMvVkxBTg0KPiA+Pj4gZmlsdGVycyBieSBzZXR0aW5nIG1hYyBhbmQg
cG9ydCBWTEFOLg0KPiA+Pj4NCj4gPj4+IDEuIFRocmVhZCBUMCBhbGxvY2F0ZXMgYSBmaWx0ZXIg
aW4gaTQwZV9hZGRfZmlsdGVyKCkgd2l0aGluDQo+ID4+PiAgICAgICAgICAgaTQwZV9uZG9fc2V0
X3ZmX3BvcnRfdmxhbigpLg0KPiA+Pj4gMi4gVGhyZWFkIFQxIGNvbmN1cnJlbnRseSBmcmVlcyB0
aGUgZmlsdGVyIGluIF9faTQwZV9kZWxfZmlsdGVyKCkNCj4gd2l0aGluDQo+ID4+PiAgICAgICAg
ICAgaTQwZV9uZG9fc2V0X3ZmX21hYygpLg0KPiA+Pj4gMy4gU3Vic2VxdWVudGx5LCBpNDBlX3Nl
cnZpY2VfdGFzaygpIGNhbGxzDQo+IGk0MGVfc3luY192c2lfZmlsdGVycygpLCB3aGljaA0KPiA+
Pj4gICAgICAgICAgIHJlZmVycyB0byB0aGUgYWxyZWFkeSBmcmVlZCBmaWx0ZXIgbWVtb3J5LCBj
YXVzaW5nDQo+IGNvcnJ1cHRpb24uDQo+ID4+Pg0KPiA+Pj4gUmVwcm9kdWN0aW9uIHN0ZXBzOg0K
PiA+Pj4gMS4gU3Bhd24gbXVsdGlwbGUgVkZzLg0KPiA+Pj4gMi4gQXBwbHkgYSBjb25jdXJyZW50
IGhlYXZ5IGxvYWQgYnkgcnVubmluZyBwYXJhbGxlbCBvcGVyYXRpb25zIHRvDQo+IGNoYW5nZQ0K
PiA+Pj4gICAgICAgICAgIE1BQyBhZGRyZXNzZXMgb24gdGhlIFZGcyBhbmQgY2hhbmdlIHBvcnQg
VkxBTnMgb24gdGhlDQo+IGhvc3QuDQo+ID4+DQo+ID4+IEl04oCZZCBiZSBncmVhdCBpZiB5b3Ug
c2hhcmVkIHlvdXIgY29tbWFuZHMuDQo+IA0KPiA+IFNvcnJ5LCBJJ20gcHJldHR5IHN1cmUgaXQn
cyBxdWl0ZSBpbXBvc3NpYmxlIHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUNCj4gPiB3aXRoIGJhc2gg
c2NyaXB0cyAvKkkndmUgdHJpZWQgcmVhbGx5IGhhcmQqLy4gUmVwcm9kdWN0aW9uIGlzDQo+ID4g
cmVsYXRlZCB0byB1c2VyLXNwYWNlL2tlcm5lbCBjb2RlIHdoaWNoIG1pZ2h0IGJlIG5vdCBvcGVu
LXNvdXJjZWQuDQo+ID4gU28gYXMgSSd2ZSBleHBsYWluZWQgaW4gdGhlIGNvbW1pdCB0aXRsZSB0
aGUgcmFjZSBjb25kaXRpb24NCj4gPiBwb3NzaWJpbGl0eSB0aGF0IHdhcyBpbnRyb2R1Y2VkIGZy
b20gdGhlIHZlcnkgYmVnaW5uaW5nLg0KPiANCj4gQ291bGQgeW91IHBsZWFzZSBhc2sgdG8gZ2V0
IGNsZWFyYW5jZSB0byBwdWJsaXNoIGl0LiBNeSBuYWl2ZSB2aWV3DQo+IHdvbmRlcnMsIHdoeSBs
ZWdhbCg/KSBzaG91bGQgb3Bwb3NlIHB1YmxpY2F0aW9uLg0KU2ltcGx5IHRoZSBkZWZlY3QgY2Fu
IGNvbWUgZnJvbSBkZXZlbG9wbWVudCB0b29scyBvciBmcm9tIGV4dGVybmFsIGN1c3RvbWVyLg0K
QW5kIGJlaW5nIHRyYWN0IGFzIGEgY29tbWVyY2lhbCBzZWNyZXQsIHdoaWNoIGV2ZW4gZG9lc24n
dCBiZWxvbmcgdG8gSW50ZWwgc29tZXRpbWVzLg0KDQo+IA0KPiA+Pj4gMy4gT2JzZXJ2ZSBlcnJv
cnMgaW4gZG1lc2c6DQo+ID4+PiAiRXJyb3IgSTQwRV9BUV9SQ19FTk9TUEMgYWRkaW5nIFJYIGZp
bHRlcnMgb24gVkYgWFgsDQo+ID4+PiAgICBwbGVhc2Ugc2V0IHByb21pc2N1b3VzIG9uIG1hbnVh
bGx5IGZvciBWRiBYWCIuDQo+ID4+DQo+ID4+IEnigJlkIGluZGVudCBpdCBieSBlaWdodCBzcGFj
ZXMgYW5kIHB1dCBpdCBpbiBvbmUgbGluZS4NCj4gPiBPaywgSSdsbCBmaXggaXQgaW4gdjINCj4g
Pg0KPiA+Pj4gVGhlIGZpeCBpbnZvbHZlcyBpbXBsZW1lbnRpbmcgYSBuZXcgaW50ZXJtZWRpYXRl
IGZpbHRlciBzdGF0ZSwNCj4gPj4+IEk0MEVfRklMVEVSX05FV19TWU5DLCBmb3IgdGhlIHRpbWUg
d2hlbiBhIGZpbHRlciBpcyBvbiBhDQo+IHRtcF9hZGRfbGlzdC4NCj4gPj4+IFRoZXNlIGZpbHRl
cnMgY2Fubm90IGJlIGRlbGV0ZWQgZnJvbSB0aGUgaGFzaCBsaXN0IGRpcmVjdGx5IGJ1dA0KPiA+
Pj4gbXVzdCBiZSByZW1vdmVkIHVzaW5nIHRoZSBmdWxsIHByb2Nlc3MuDQo+ID4+DQo+ID4+IFBs
ZWFzZSBleGN1c2UgbXkgaWdub3JhbmNlLiBXaGVyZSBpcyB0aGF0IGRvbmUgaW4gdGhlIGRpZmY/
IEZvciBtZQ0KPiBpdA0KPiA+PiBsb29rcyBsaWtlIHlvdSBvbmx5IHJlcGxhY2UgYEk0MEVfRklM
VEVSX05FV2AgYnkNCj4gYEk0MEVfRklMVEVSX05FV19TWU5DYA0KPiA+PiBpbiBjZXJ0YWluIHBs
YWNlcywgYnV0IG5vIG5ldyBjb25kaXRpb24gZm9yIHRoaXMgY2FzZS4NCj4gPg0KPiA+IEhlcmUg
YXJlIGJlbG93IHRoZSBjb2RlIHdoaWNoIGFkZHMgbmV3IEk0MEVfRklMVEVSX05FV19TWU5DIGVu
dW0uDQo+ID4gQW5kIGFkZGl0aW9uYWwgY29uZGl0aW9ucyBmb3IgdGhpcyBJNDBFX0ZJTFRFUl9O
RVdfU1lOQyBzdGF0ZS4gQWxsDQo+ID4gb3RoZXIgcGxhY2VzIGluIHRoZSBkcml2ZXIganVzdCB0
cmFjdCBJNDBFX0ZJTFRFUl9ORVdfU1lOQyBhcyBub3QNCj4gPiBqdXN0IEk0MEVfRklMVEVSX05F
VyBieSBkZWZhdWx0Lg0KPiBUaGFuayB5b3UuIEZvciBtZSBpdOKAmXMgbm90IHNvIG9idmlvdXMg
ZnJvbSB0aGUgZGlmZiwgYW5kIGluZGVlZCwgaXTigJlzDQo+IGRvbmUgaW4gYGk0MGVfc3luY192
c2lfZmlsdGVycygpYC4gVGhhbmsgeW91IGFnYWluLg0KPiANCj4gPj4+IEZpeGVzOiAyNzhlN2Qw
YjlkNjggKCJpNDBlOiBzdG9yZSBNQUMvVkxBTiBmaWx0ZXJzIGluIGEgaGFzaCB3aXRoDQo+IHRo
ZSBNQUMgQWRkcmVzcyBhcyBrZXkiKQ0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExv
a3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4+PiAtLS0NCj4gPj4+
ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgICAgICAgfCAgMiAr
Kw0KPiA+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMu
YyB8ICAyICsrDQo+ID4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
bWFpbi5jICAgIHwgMTIgKysrKysrKysrKy0NCj4gLQ0KPiA+Pj4gICAgMyBmaWxlcyBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiA+PiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+ID4+PiBpbmRleCAyMDg5YTBlLi5h
MTg0MmRkIDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlLmgNCj4gPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZS5oDQo+ID4+PiBAQCAtNzU1LDYgKzc1NSw4IEBAIGVudW0gaTQwZV9maWx0ZXJfc3RhdGUgew0K
PiA+Pj4gICAgCUk0MEVfRklMVEVSX0FDVElWRSwJCS8qIEFkZGVkIHRvIHN3aXRjaCBieSBGVw0K
PiAqLw0KPiA+Pj4gICAgCUk0MEVfRklMVEVSX0ZBSUxFRCwJCS8qIFJlamVjdGVkIGJ5IEZXICov
DQo+ID4+PiAgICAJSTQwRV9GSUxURVJfUkVNT1ZFLAkJLyogVG8gYmUgcmVtb3ZlZCAqLw0KPiA+
Pj4gKwkvKiBSRVNFUlZFRCAqLw0KPiA+Pg0KPiA+PiBXaHkgdGhlIHJlc2VydmVkIGNvbW1lbnQ/
IFBsZWFzZSBlbGFib3JhdGUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0KPiA+DQo+ID4gVGhpcyBp
cyBmb3Igbm90IGJyZWFraW5nIGNvbXBhdGliaWxpdHkgd2l0aCBkaWZmZXJlbnQgZHJpdmVyDQo+
ID4gdmVyc2lvbnMuIEJldHdlZW4gT09ULCBuZXQtbmV4dCBhbmQgcGxhaW4gb2xkIG5ldC4gSXNu
J3QgaXQgb2J2aW91cw0KPiA+IGZyb20gdGhlIGNvbW1lbnQsIGl0J3MgIlJFU0VSVkVSRCI/DQo+
IA0KPiBBcHBhcmVudGx5IG5vdCwgb3RoZXJ3aXNlIEkgd291bGRu4oCZdCBhc2suIDstKQ0KPiAN
Cj4gPiBDYW4geW91IHByb3ZpZGUgbWUgZXhhbXBsZSBjb21taXQgbWVzc2FnZSB3aGF0IEkgc2hv
dWxkIGZvbGxvdz8NCj4gDQo+IFRoZXJlIGFyZSBwZW9wbGUgcmVhZGluZyB0aGUgY29kZSBub3Qg
ZmFtaWxpYXIgd2l0aCB0aGUgZWNvc3lzdGVtLA0KPiB0aGF0DQo+IHRoZXJlIGlzIGFuIG91dCBv
ZiB0cmVlIGRyaXZlciBmb3JlIGV4YW1wbGUuIFNvIHRoZSBjb2RlIG9yIHRoZSBjb21taXQNCj4g
bWVzc2FnZSBzaG91bGQgaGF2ZSBhbiBleHBsYW5hdGlvbiB3aHkgYEk0MEVfRklMVEVSX05FV19T
WU5DID0gNmAgYW5kDQo+IHdoYXQgdGhlIHJlc2VydmVkIGlzIHVzZWQgZm9yLg0KPiANCj4gPj4+
ICsJSTQwRV9GSUxURVJfTkVXX1NZTkMgPSA2LAkvKiBOZXcsIG5vdCBzZW50LCBpbiBzeW5jIHRh
c2sgKi8NCj4gDQo+IEFsc28gbWVudGlvbiB0aGUgaGFzaCBsaXN0IGluIHRoZSBjb21tZW50Pw0K
PiANCj4gPj4+ICAgIC8qIFRoZXJlIGlzIG5vICdyZW1vdmVkJyBzdGF0ZTsgdGhlIGZpbHRlciBz
dHJ1Y3QgaXMgZnJlZWQgKi8NCj4gPj4+ICAgIH07DQo+ID4+PiAgICBzdHJ1Y3QgaTQwZV9tYWNf
ZmlsdGVyIHsNCj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfZGVidWdmcy5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX2RlYnVnZnMuYw0KPiA+Pj4gaW5kZXggYWJmNjI0ZC4uMWM0MzliMSAxMDA2NDQNCj4gPj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMNCj4g
Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMN
Cj4gPj4+IEBAIC04OSw2ICs4OSw4IEBAIHN0YXRpYyBjaGFyICppNDBlX2ZpbHRlcl9zdGF0ZV9z
dHJpbmdbXSA9IHsNCj4gPj4+ICAgIAkiQUNUSVZFIiwNCj4gPj4+ICAgIAkiRkFJTEVEIiwNCj4g
Pj4+ICAgIAkiUkVNT1ZFIiwNCj4gPj4+ICsJIjxSRVNFUlZFRD4iLA0KPiA+Pj4gKwkiTkVXX1NZ
TkMiLA0KPiA+Pj4gICAgfTsNCj4gPj4+DQo+ID4+PiAgICAvKioNCj4gPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiA+Pj4gaW5kZXggMjUyOTVh
ZS4uNTVmYjM2MiAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMNCj4gPj4+IEBAIC0xMjU1LDYgKzEyNTUsNyBAQCBpbnQgaTQwZV9j
b3VudF9maWx0ZXJzKHN0cnVjdCBpNDBlX3ZzaSAqdnNpKQ0KPiA+Pj4NCj4gPj4+ICAgIAloYXNo
X2Zvcl9lYWNoX3NhZmUodnNpLT5tYWNfZmlsdGVyX2hhc2gsIGJrdCwgaCwgZiwgaGxpc3QpDQo+
IHsNCj4gPj4+ICAgIAkJaWYgKGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FVyB8fA0KPiA+Pj4g
KwkJICAgIGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FV19TWU5DIHx8DQo+ID4+PiAgICAJCSAg
ICBmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9BQ1RJVkUpDQo+ID4+PiAgICAJCQkrK2NudDsNCj4g
Pj4+ICAgIAl9DQo+ID4+PiBAQCAtMTQ0MSw2ICsxNDQyLDggQEAgc3RhdGljIGludA0KPiBpNDBl
X2NvcnJlY3RfbWFjX3ZsYW5fZmlsdGVycyhzdHJ1Y3QgaTQwZV92c2kgKnZzaSwNCj4gPj4+DQo+
ID4+PiAgICAJCQluZXctPmYgPSBhZGRfaGVhZDsNCj4gPj4+ICAgIAkJCW5ldy0+c3RhdGUgPSBh
ZGRfaGVhZC0+c3RhdGU7DQo+ID4+PiArCQkJaWYgKGFkZF9oZWFkLT5zdGF0ZSA9PSBJNDBFX0ZJ
TFRFUl9ORVcpDQo+ID4+PiArCQkJCWFkZF9oZWFkLT5zdGF0ZSA9IEk0MEVfRklMVEVSX05FV19T
WU5DOw0KPiA+Pj4NCj4gPj4+ICAgIAkJCS8qIEFkZCB0aGUgbmV3IGZpbHRlciB0byB0aGUgdG1w
IGxpc3QgKi8NCj4gPj4+ICAgIAkJCWhsaXN0X2FkZF9oZWFkKCZuZXctPmhsaXN0LCB0bXBfYWRk
X2xpc3QpOw0KPiA+Pj4gQEAgLTE1NTAsNiArMTU1Myw4IEBAIHN0YXRpYyBpbnQNCj4gaTQwZV9j
b3JyZWN0X3ZmX21hY192bGFuX2ZpbHRlcnMoc3RydWN0IGk0MGVfdnNpICp2c2ksDQo+ID4+PiAg
ICAJCQkJcmV0dXJuIC1FTk9NRU07DQo+ID4+PiAgICAJCQluZXdfbWFjLT5mID0gYWRkX2hlYWQ7
DQo+ID4+PiAgICAJCQluZXdfbWFjLT5zdGF0ZSA9IGFkZF9oZWFkLT5zdGF0ZTsNCj4gPj4+ICsJ
CQlpZiAoYWRkX2hlYWQtPnN0YXRlID09IEk0MEVfRklMVEVSX05FVykNCj4gPj4+ICsJCQkJYWRk
X2hlYWQtPnN0YXRlID0gSTQwRV9GSUxURVJfTkVXX1NZTkM7DQo+ID4+Pg0KPiA+Pj4gICAgCQkJ
LyogQWRkIHRoZSBuZXcgZmlsdGVyIHRvIHRoZSB0bXAgbGlzdCAqLw0KPiA+Pj4gICAgCQkJaGxp
c3RfYWRkX2hlYWQoJm5ld19tYWMtPmhsaXN0LA0KPiB0bXBfYWRkX2xpc3QpOw0KPiA+Pj4gQEAg
LTI0MzcsNyArMjQ0Miw4IEBAIHN0YXRpYyBpbnQNCj4gPj4+ICAgIGk0MGVfYXFjX2Jyb2FkY2Fz
dF9maWx0ZXIoc3RydWN0IGk0MGVfdnNpICp2c2ksIGNvbnN0IGNoYXINCj4gKnZzaV9uYW1lLA0K
PiA+Pj4gICAgCQkJICBzdHJ1Y3QgaTQwZV9tYWNfZmlsdGVyICpmKQ0KPiA+Pj4gICAgew0KPiA+
Pj4gLQlib29sIGVuYWJsZSA9IGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FVzsNCj4gPj4+ICsJ
Ym9vbCBlbmFibGUgPSBmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9ORVcgfHwNCj4gPj4+ICsJCSAg
ICAgIGYtPnN0YXRlID09IEk0MEVfRklMVEVSX05FV19TWU5DOw0KPiA+Pj4gICAgCXN0cnVjdCBp
NDBlX2h3ICpodyA9ICZ2c2ktPmJhY2stPmh3Ow0KPiA+Pj4gICAgCWludCBhcV9yZXQ7DQo+ID4+
Pg0KPiA+Pj4gQEAgLTI2MTEsNiArMjYxNyw3IEBAIGludCBpNDBlX3N5bmNfdnNpX2ZpbHRlcnMo
c3RydWN0IGk0MGVfdnNpDQo+ICp2c2kpDQo+ID4+Pg0KPiA+Pj4gICAgCQkJCS8qIEFkZCBpdCB0
byB0aGUgaGFzaCBsaXN0ICovDQo+ID4+PiAgICAJCQkJaGxpc3RfYWRkX2hlYWQoJm5ldy0+aGxp
c3QsDQo+ICZ0bXBfYWRkX2xpc3QpOw0KPiA+Pj4gKwkJCQlmLT5zdGF0ZSA9IEk0MEVfRklMVEVS
X05FV19TWU5DOw0KPiA+Pj4gICAgCQkJfQ0KPiA+Pj4NCj4gPj4+ICAgIAkJCS8qIENvdW50IHRo
ZSBudW1iZXIgb2YgYWN0aXZlIChjdXJyZW50IGFuZA0KPiBuZXcpIFZMQU4NCj4gPj4+IEBAIC0y
NzYyLDcgKzI3NjksOCBAQCBpbnQgaTQwZV9zeW5jX3ZzaV9maWx0ZXJzKHN0cnVjdCBpNDBlX3Zz
aQ0KPiAqdnNpKQ0KPiA+Pj4gICAgCQlzcGluX2xvY2tfYmgoJnZzaS0+bWFjX2ZpbHRlcl9oYXNo
X2xvY2spOw0KPiA+Pj4gICAgCQlobGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKG5ldywgaCwgJnRt
cF9hZGRfbGlzdCwNCj4gaGxpc3QpIHsNCj4gPj4+ICAgIAkJCS8qIE9ubHkgdXBkYXRlIHRoZSBz
dGF0ZSBpZiB3ZSdyZSBzdGlsbCBORVcNCj4gKi8NCj4gPj4+IC0JCQlpZiAobmV3LT5mLT5zdGF0
ZSA9PSBJNDBFX0ZJTFRFUl9ORVcpDQo+ID4+PiArCQkJaWYgKG5ldy0+Zi0+c3RhdGUgPT0gSTQw
RV9GSUxURVJfTkVXIHx8DQo+ID4+PiArCQkJICAgIG5ldy0+Zi0+c3RhdGUgPT0gSTQwRV9GSUxU
RVJfTkVXX1NZTkMpDQo+ID4+PiAgICAJCQkJbmV3LT5mLT5zdGF0ZSA9IG5ldy0+c3RhdGU7DQo+
ID4+PiAgICAJCQlobGlzdF9kZWwoJm5ldy0+aGxpc3QpOw0KPiA+Pj4gICAgCQkJbmV0ZGV2X2h3
X2FkZHJfcmVmY250KG5ldy0+ZiwgdnNpLT5uZXRkZXYsIC0NCj4gMSk7DQo+IFRoYW5rIHlvdSBh
Z2FpbiBmb3IgeW91ciB3b3JrIGFuZCBleHBsYW5hdGlvbnMuDQo+IA0KPiANCj4gS2luZCByZWdh
cmRzLA0KPiANCj4gUGF1bA0K
