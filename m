Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD1187A7B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 13:41:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CD47407B2;
	Wed, 13 Mar 2024 12:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQFfpouECXnM; Wed, 13 Mar 2024 12:41:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C897D407B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710333714;
	bh=aS6pDw5U+xSiy/KWfRCS0pX7nz9uzsEbgjh2eD5SRI8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rBzeWZBEo26kqFr+DPKdTH3eSUk45kbhr9AZIKrOf009w/d/u8F1cGNkC1c+ERsC/
	 ILj0WkE5GzmPY688kSkdf25cGOKBEBXmo/eVJEZo2Bf/UTxJgKketpNnAo2zF2+mxn
	 LlREZZl0KeHUJ3hPa75uR/aRxfRL8XnmhnuspUsU5B174BTxtZWDlhTLpRq7ykQ7dN
	 ZD8NS+YvPsV/4N+wq2b2Og9RBPAYCr5002tQX2afol2sWOwpOWIk+M0cWHlIXD/g+9
	 aSidbDacP5FlLgDw1OjgGEoFjRDSHkpdjOccX3hP6ZeQBLmczK1LAv8uwFX1aT5h7L
	 vqbL8Zwt1/5KA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C897D407B3;
	Wed, 13 Mar 2024 12:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 692321BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 12:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61E8081277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 12:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSHodY68413f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 12:41:51 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Mar 2024 12:41:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7483F81232
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7483F81232
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7483F81232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 12:41:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4941517"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="4941517"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 05:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="16630696"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 05:34:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:34:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:34:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 05:34:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 05:34:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFQjY0pDsN29A4Z4zmDQN+yJSgE3okX1nA4zqfKHKYXjERjyYI5cxHOoG4EBZuiQmG+XOA+4jcA2UG6UNvbjMbl1Kp5mThTw4zUeD+vzCf3qDwWcLHRf4eQlg1DZF9L/2T8NZkOCOGMHZlGI5j/3on+jW5M7palF6H/C/Al891Q2KKzYmB/2TJdDCCjOJewMFMY5Yk6O5W2fvfZPTY1HVjslB83ZC+Q9ZhyM2cbQkOJyjMBl5Gt5KUlDOrBXq3ctgVDMLgPoB4rrEuy+FCTV4ke84fhLolDvGLKYvgZZ6FiOR32XAMFtpSUmVUvt9XzCntm0o6mDUAmvWxenuz3YFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aS6pDw5U+xSiy/KWfRCS0pX7nz9uzsEbgjh2eD5SRI8=;
 b=YwvCzp4Dn0c2RAdp/w5c44jXfRYiPtOmF6G+DE1k06J1na+aV4d9n1592bn3ehIviHFznB76dE5iV01dxBYBEL4ehsTJfvOVT9WVX8tLVSK7zUQtE5w0QDqYs27sCCPMzQGfhJI1mFJaBzX1eqG5wOjIcJ5fN3fslWxCa+ZM1oAxJybb0M+6YLDwnEigo3/+ryweX/bqjgyzjYFX6tAp/N2rLb/8mT2hRLamrf1NNvs8CoSbG5jNzbHAEGD+7D5CNhzw7FJ32mxRPWnUr2y7oXxrP3IAowzmkBY3p+sl38brvkyHAG8RRl3yswdSee0UsJ2LXp+0lH3+uVWpkfL/EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB5959.namprd11.prod.outlook.com (2603:10b6:510:1e2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Wed, 13 Mar
 2024 12:34:39 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688%6]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 12:34:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix vf may be used
 uninitialized in this function warning
Thread-Index: AQHadS4pmAkJ/Y0k50aEcFqGas3KcLE1gCUAgAAap8A=
Date: Wed, 13 Mar 2024 12:34:38 +0000
Message-ID: <SJ0PR11MB58668956DC932D7C8E25B487E52A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240313095639.6554-1-aleksandr.loktionov@intel.com>
 <1fa71d41-dc3c-4c1a-8b6e-70aa4c9511c1@molgen.mpg.de>
In-Reply-To: <1fa71d41-dc3c-4c1a-8b6e-70aa4c9511c1@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB5959:EE_
x-ms-office365-filtering-correlation-id: 6efffaa6-fb3c-4ded-0934-08dc4359f315
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: plsJcLEjpdSdLsvQtz2G4RqEBL86p5zlnvqMiS3yc98KWcqnght5e1wnGctoh4B/6Z/aK9ZtqdUWdCn/Qd0kJPdEQA+zpKH/GbeZlnk4d7TJYp/kaxI9aGwm/tw4X5tHUZrK2+vvwOFjzommQHyfMCmA19t/p+P0LjwAbvSv3W/Dqx2W99z2Vyp8WYiS+S/BLGc5JnIsBdnGWffihmkn5KanxSNFP3PWfrMYe4C0kvKi354QDuoP89+L7+G6O07E5qk1WwliaVuiKgJtDS1TU0xLwH6LH5mgKrV17rpHnBaOMBwRNn+eueXrCuTCIXUGkl061PwhpXElF8yKcTYLkp/EaW1TDmEY5IU1sex74b+f+euWall2ESu0tdQeRa4mBWDAumES7lTEEuSFH/nVH4oKJL40rmwhRSgHrDkvhFg+E4x0iDLJq7VH4VjWB5Y042/gTwj7hpY+dy+Nfp1U2d+XVGtiIvKDrTAwoXdnjg58/G0WgyZ1+FqV1u0VgpM3MdxzLIJ4Y/y5RZjhEMcrdeZGyUZ+s8ksi+ODTu9xNXA4NlmdxO1FqM1JzTU0Q7RgFEwydx4mpwhSsuc6382DVdhdKudRPGouQRtjtHgqaIwj4trlt8EY9+Q3wsy+KFeMUCE6t0IJGUS2G8YXf03vH8WKxHgEviBY1lRHtLAYtm+ctEgWg2JH87iNqXDeG/0B0MEYnnaLPgU7avTXXyvRLJW2nVljBpAKkMqdPAfMvVk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VThJcEJhSzFWVVN0aDdJUy8rVHlzS09tUnQ1cXNsUFIwVjZVNkYwS01KN0dB?=
 =?utf-8?B?K2NlQ3Nob0ZaTmhHZitIYkVMUWxTamh1MzlESlcxcjZScVRVNFNVWHBTZ1lN?=
 =?utf-8?B?SWpJd25zZDNsVTBDRXIzS1NBMXdNSTJ2YzdSUkdtY21XVDQzZGhBV3E3VmFB?=
 =?utf-8?B?czlHQmFKVzl5WDNlNHRtbzhhemlzR0RUa01VZEExeHB5anNTcjFCaUJ5M1lz?=
 =?utf-8?B?Uk8vdENFZ25UTjNnaDZtNVB0eSs4OHRyWUp1S1lPZkV5bEwwVGNlSllvTnBN?=
 =?utf-8?B?a1JlL3lyU2JQUmw3R1dxSkdBbnM5YW5QNUFLd2J2L1RWTkpxU2tGNy9oeUJw?=
 =?utf-8?B?eDdnb0tBb09iY1Z6OXRlL0NLSERrM1F1Q2FMQjhuUGhsT0dUQUcyekRpM0hW?=
 =?utf-8?B?WExuQzErb1N2Y1FOaWFVN1E0RTVxdlNxQk1ROXg4TGJRT0twcG03V0JBZTE1?=
 =?utf-8?B?NmxKSFRTRjEzZGVLVE83U2FQcS9jQjZJN29pdTRXMHZQY01QNEpteFJlSk9h?=
 =?utf-8?B?eWQ3RkpEeFJJOXROVmVwenJ1ckpXUlIrM3o3cHZlU2hUMWlHWXNYVVZUYW14?=
 =?utf-8?B?U25HYmtkK2tmYTR5TEF3SnVTS0RxRHNMTHVBUmR1d3phV1hlR080cnFzUHJO?=
 =?utf-8?B?MWIxa1R5UHl1aDVGTVJ3NWpmNVhLV3ptekhnWG5LZkZ4eEg2WEJETjFvSGNp?=
 =?utf-8?B?M1M3YjVJTmk0eDhiVFN2ZUZIb0IybDZUcmJMV1doRzNEM2FGblRmbkJZakZ2?=
 =?utf-8?B?S0w1YVpZdlBTUGYwUG9pR0NkRlQvdkw2VUhIRnc1Y2VzMmdmYm1WK3lVbUZW?=
 =?utf-8?B?TU9ndnFkTndOc0twN29nOCt0bDN5VFJ0SGhxeVB3MWxrN3A1WWh4ZXZ2V2Rh?=
 =?utf-8?B?OFJ6aTdFSEN3elMySVJNbjRRRjBwTWU2ejAxc0F4eHlKcjNqcVJhMGx5TnhG?=
 =?utf-8?B?Wkt6QnhFclJVOHFMcHJnSWpaUnI0cjhLcXkyWGx5QzhKNUdOc3FTa3l2VWxL?=
 =?utf-8?B?SndsWFU3eG4xYVFBaXdKV3l5NXVnSmtLOGo3bHlqdlFmU2ZpMWpFczdGMHlO?=
 =?utf-8?B?UVVVK1BZNWhRY09nZzRyd1VFbCtnbmFpRzFhbHE2cGtMcG9UcENIU2phQStR?=
 =?utf-8?B?SVprdzBYcWh0RXB2UU82bGViMUc3a0xKdmxucUZzMUZqUXZNREJwVENlb0NF?=
 =?utf-8?B?Q29lTGFSektsSmVVUEEzbTVWNm9JVXIzTEhpc2JzTVhSb0ZXVUJZMk5KYmVM?=
 =?utf-8?B?Y2c2TnRKNXF1bThGOThWMC93ZDYrK1hsMmM4Zk94Q2JXRG1IbGtza2hQMGdn?=
 =?utf-8?B?MnN0QmxoSnRCdmVFZkVvYy9jU3lOSnlGUitsZzBQZVhYUW9mazdYdXFNSHUz?=
 =?utf-8?B?TjR3aVBTMDJXcmNZUHpNdThxVTBYTCtlblhzSC91LzJ1Wm83VERlYUtRRUcx?=
 =?utf-8?B?RisyNkpBNkhFNnZBcWxZMEZLZnN4Q2IrRzZocTRscVFUUHgraTZqWlJqTk5M?=
 =?utf-8?B?Z3BCa041SElKcVdkTitRakw2NFpzWTFvVTkzZmpnZjFpMTlncEpXQ1Y3UW10?=
 =?utf-8?B?ZHFzb2prK2dyNzFaUjFxWkx3elVKUnViVjNENVRxaEw0VnIrL09JWmc2OGEz?=
 =?utf-8?B?QkNkV2xqb0RTNFJtN05xdis3TTV3SE9ldS9oTzRjaERLUXpsZHpXS3JkVktY?=
 =?utf-8?B?VlgvYlBCcjNoQ2l1bDhpZWN0TTRsYmROY2UvbjVLeHJpd0hNNkpzcUpsSHVE?=
 =?utf-8?B?bXAwMDhOVDFudk1wQjRoWHRya3ZoSHJBaW1QK2IxSm9ZY3pod25CcS9MVFFv?=
 =?utf-8?B?RGFKc3podkxyLzVFY0I1RVBVYTRwUFZPVjJoeENxQTRhNnp5U3Qxa3BkTWtp?=
 =?utf-8?B?L3ZIcEFad05QeVFSL1BUeUlFZm92TWNhM0VhWkZORjhpY2Y1dnVjNi9vdXV2?=
 =?utf-8?B?U0FZVFV0WnNDRE1qNnB6UXRyWmdrd2tFZ1RQZnFSN2ZyRlRBQnNzQ2t6OWZt?=
 =?utf-8?B?MVhkdy8wTE9XOS9Ja0cyZ1E1TmMzZjNWcEFCam9Sby9WOWtyMWU4U05OZmsw?=
 =?utf-8?B?ZElFVmhiUXg1YmE0VjgvVmxZRjBBdjJaSUYyMVVuY0FiTTBFSlVXd2FkMDF5?=
 =?utf-8?B?UWRTR3Y2blRzL2x1ajY5bHFWRFl0emJiSmhDeTRmNmdvYjVQd09VS3IrUzR5?=
 =?utf-8?B?T3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6efffaa6-fb3c-4ded-0934-08dc4359f315
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 12:34:38.9027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZA+s6N0HXcZf0Cz9mCQcHcqcRr4I+/azkl9d6WmOZUJnN6eQwYeLNt1yIblnrvgdb2qC1QnGUCKX7cbzcU47rJ802qhn5mqmAd1sacNMhHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710333711; x=1741869711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aS6pDw5U+xSiy/KWfRCS0pX7nz9uzsEbgjh2eD5SRI8=;
 b=mdGQP8LATb+FBwRWJcX0+ZobzZhEPucJVoznSJowCYz6WAElRa86Wvnf
 PuljvEf9ola9sEEqOxktvD0rVSVlxP7DZTsIItPbC0OzMXMS1twuJyjxo
 SAyyPBK8k8640/QDfSYOmtN3kfAXZhv9YG9Ymb6ADmE3iSqoHICrRujy5
 SYb/ewJVmna7jP4bvrdFxRxRCtemEHTPGcH19hRlPVLl+lb1wWe4Hxgys
 S4Z/j3DN72Mr8KMyYb+ohRj3IDitGAQQe0hQM0Mdh1p6jflxKm6p9OMI9
 7En1iqTNCEu53KlLCqsAFLGS9tfbIlZvHZKoALBlFAlXAHsJSXocCrCC+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mdGQP8LA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix vf may be used
 uninitialized in this function warning
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCAxMywgMjAyNCAx
MTo1OCBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXll
biwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLdWJhbGV3c2tpLCBBcmthZGl1c3oNCj4gPGFya2FkaXVzei5rdWJhbGV3c2tp
QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV0IHYyXSBpNDBlOiBmaXggdmYgbWF5DQo+IGJlIHVzZWQgdW5pbml0aWFsaXplZCBpbiB0aGlz
IGZ1bmN0aW9uIHdhcm5pbmcNCj4gDQo+IERlYXIgQWxla3NhbmRyLA0KPiANCj4gDQo+IEFtIDEz
LjAzLjI0IHVtIDEwOjU2IHNjaHJpZWIgQWxla3NhbmRyIExva3Rpb25vdjoNCj4gPiBUbyBmaXgg
dGhlIHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBieSBjb21taXQgNTI0MjRmOTc0YmM1LCB3aGljaA0K
PiBjYXVzZXMNCj4gPiBzZXJ2ZXJzIGhhbmcgaW4gdmVyeSBoYXJkIHRvIHJlcHJvZHVjZSBjb25k
aXRpb25zIHdpdGggcmVzZXRzDQo+IHJhY2VzLg0KPiA+IFVzaW5nIHR3byBzb3VyY2VzIGZvciB0
aGUgaW5mb3JtYXRpb24gaXMgdGhlIHJvb3QgY2F1c2UuDQo+ID4gSW4gdGhpcyBmdW5jdGlvbiBi
ZWZvcmUgdGhlIGZpeCBidW1waW5nIHYgZGlkbid0IG1lYW4gYnVtcGluZyB2Zg0KPiA+IHBvaW50
ZXIuIEJ1dCB0aGUgY29kZSB1c2VkIHRoaXMgdmFyaWFibGVzIGludGVyY2hhbmdlYWJseSwgc28N
Cj4gc3RhbGVkDQo+ID4gdmYgY291bGQgcG9pbnQgdG8gZGlmZmVyZW50L25vdCBpbnRlbmRlZCB2
Zi4NCj4gPg0KPiA+IFJlbW92ZSByZWR1bmRhbnQgInYiIHZhcmlhYmxlIGFuZCBpdGVyYXRlIHZp
YSBzaW5nbGUgVkYgcG9pbnRlcg0KPiBhY3Jvc3MNCj4gPiB3aG9sZSBmdW5jdGlvbiBpbnN0ZWFk
IHRvIGd1YXJhbnRlZSBWRiBwb2ludGVyIHZhbGlkaXR5Lg0KPiA+DQo+ID4gRml4ZXM6IDUyNDI0
Zjk3NGJjNSAoImk0MGU6IEZpeCBWRiBoYW5nIHdoZW4gcmVzZXQgaXMgdHJpZ2dlcmVkDQo+IG9u
DQo+ID4gYW5vdGhlciBWRiIpDQo+ID4gU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25v
dg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IEFy
a2FkaXVzeiBLdWJhbGV3c2tpDQo+IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+DQo+
ID4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiB2MSAtPiB2MjogY29tbWl0IG1lc3NhZ2UgY2hhbmdlDQo+IA0K
PiBUaGFuayB5b3UgdmVyeSBtdWNoLiBObyBuZWVkIHRvIHJlc2VuZCwgYnV0IEkgZmluZCBpdCBh
bHNvIGFsd2F5cw0KPiB1c2VmdWwgdG8gaGF2ZSB0aGUgZXhhY3Qgd2FybmluZyBwYXN0ZWQgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlLg0KPiANClRoZSB3YXJuaW5nIGlzIGV4YWN0bHkgInZmIG1heSBi
ZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbiIgIGl0J3MgYWxyZWFkeSBpbiB0
aGUgdGl0bGUuIFdoYXQgeW91IHN1Z2dlc3QgbWUgdG8gZG8/DQpUaGFuayB5b3UNCg0KPiBb4oCm
XQ0KPiANCj4gPiAtLS0NCj4gPiAgIC4uLi9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNo
bmxfcGYuYyAgICB8IDM0ICsrKysrKysrKy0tLQ0KPiAtLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+IA0KPiBSZXZpZXdlZC1i
eTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gDQo+IA0KPiBLaW5kIHJl
Z2FyZHMsDQo+IA0KPiBQYXVsDQo=
