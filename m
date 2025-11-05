Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C6FC35106
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 11:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDA3C40DBA;
	Wed,  5 Nov 2025 10:17:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnTr-gStIAy2; Wed,  5 Nov 2025 10:17:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F53D40DC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762337835;
	bh=DoEAAQEqK+DOVBTUAwxS6KeG+5DqX36X6IbHyXoRGOg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fIxhtOOIx9nqndkaYPhiPztJDWe5ttZFPTN8F6mV0qqgL8Ap5Ar0YHi6WTZudcfEO
	 n/+HmyeNj0cFvCDKa0Wec6cjYk3Px4YCpE/Dea/zMH4DT9NlrtKuTGhhl6LZEKdaY4
	 ERlNph8fSabE9Uh2GRu2tjADIlXG0DreYwT/XxHZrMghJYvJqtHxmXIy7l5G3n9C3a
	 aqagEqiIk+lm2zRCKVtDIuo/Wo7eet7N/oyxcZNJoSo+fvwucPxhlQr8voRPZjX36T
	 hEdgWOW1RvT2sfrmmpYfPB/XaU1HnzJPcXab0vPqRCDcOUTfKFjaH3tJeDWpmJYZSp
	 nNlVQ4mtrDFew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F53D40DC2;
	Wed,  5 Nov 2025 10:17:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CDEE222
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 233FA8409C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 78wTy8n0ntGi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 10:17:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CDB1840B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CDB1840B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CDB1840B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:17:13 +0000 (UTC)
X-CSE-ConnectionGUID: sBuNIeZ1RKij+6jOkALYiw==
X-CSE-MsgGUID: 1IFXJctmQaSXEPY78mo7fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="81850725"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="81850725"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 02:17:13 -0800
X-CSE-ConnectionGUID: YdRcXiQCSXedugEE0gwcSQ==
X-CSE-MsgGUID: GcebFnXoTFipmyAnp2qgjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187263731"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 02:17:12 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 02:17:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 02:17:12 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 02:17:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CQqN+A4sNltezABcjh8whk7V2hVJIpc/I8qQJzcUMSzgcRcIn8T+1hvma3q0uMcqHYoNitHLbCHUVYVwceCTFqotEEgjR4I8BXIHa0tZMSjaR+ULyi9+Wu761KITZRpyASvU4ly9t8tu1ajoOt9W+bz3h5D5cA13Snl4lZwbzmq4OAMV9Y+okg/Zl4Mz34fh6ez1sZSqw2uRkiL2CEXzJjKalT28cAsXqI/5vDhscmQmKawB7XHOFLe/4OGZs9sP+YnI18OyGqmqCXyRAjHxb04AHmorXwOEy8Oc3tFZfmMIaxbY8LQxhoGyX++8ui0n/wWMjpfyx2u4X/RBBR1fcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DoEAAQEqK+DOVBTUAwxS6KeG+5DqX36X6IbHyXoRGOg=;
 b=v50+5Ql1KSqNKpQt8TBhP6PGNNuTFU4blBbrtrkNkHMHmd+eIgwEMoX80jqYX+T8J2hjsgWg5HgvfkoQRhRxHQZzm7a7yW1DUvTM/rmvmvK7oKt7VJrXfP53meum7r0WSyI+rZliG2Ozjn7+rAuRh+EKydzwRngreHgCt3PCNqvuFnnCmvIl0Oe/ev91e26CHr95uJNaurcdwkSTSmvDjFC7doxOa8qmolqZKSa+fH3Vp2t6NlFT4r6WGR48B5IEFK96M+yYjHdzYog2vi86d8ntvyiemsBc1kbJHr8eMCG0MjG4bPJQUw6nOFwJFryDiwivGxsEfc9hYFT6cNokjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.18; Wed, 5 Nov
 2025 10:17:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 10:17:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: ALOK TIWARI <alok.a.tiwari@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [query] i40e: Clarification on mask.src_ip[0] & tcf.dst_ip[0]
 usage in i40e_vc_del_cloud_filter()
Thread-Index: AQHcTjs3zNd7xDwiHUCPOluPW8t+LbTj3ejA
Date: Wed, 5 Nov 2025 10:17:09 +0000
Message-ID: <IA3PR11MB8986639F23DAC6717D717160E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <17e6c453-6c58-4b71-a4cd-237143d006cc@oracle.com>
In-Reply-To: <17e6c453-6c58-4b71-a4cd-237143d006cc@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB8230:EE_
x-ms-office365-filtering-correlation-id: 4498df57-7126-47ae-1942-08de1c547af9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Ly9vT3c4Z1g1Qk13RkRsQzVuY05CZjB4NnhodkE5R0U0UWZyaGp4aksyY1BO?=
 =?utf-8?B?RExseTBLL0JZNkJIenZvYlp1Wi9NbUxEeGdmU0ZCWGVIYlF6TnBPRUVaeDNa?=
 =?utf-8?B?d0M4ZWFLbXBWVGhaMndPYlp3ZUZDTGpubkNrYXVtbis1RVBkQy9GM1dLakZr?=
 =?utf-8?B?azJIcnUvdThaMTBEUEF3YmNXbkNUWUNYL1NQV1RGU1F3dFFoWDhEN0Q3cDhT?=
 =?utf-8?B?UGFQWFd0SzZVU1p5S0dPUnc5cTlnQk5oRHFFMWRhVkFZWm02V2xsblBuQXBK?=
 =?utf-8?B?d29MTW9qaW01d2JrQlpBdzEwQ3Npckh5SGdDUEFpODVDWUM5aEtOUUY2K1Vq?=
 =?utf-8?B?bm43UTNiZmw2T2JZaC9vSG9WVUdoTjJKbVBldWpXMHVLZmNKRFJDVGpqRHJS?=
 =?utf-8?B?WWhUZHluZlNKMEpxcGJyck14MkU1OWNvZjhQbm5NaGZZZTRicGUrVjhHOCtC?=
 =?utf-8?B?ZVpPMzhVRmNoOXRtNTJQN2JNRGVDYXFKSWNYVmhEc0V5Y29JU2NidlF2azVn?=
 =?utf-8?B?QlMxOXMydzhxUk9zMmhqLzBYcExNWksvRHlHOFFUZ3ZQeE91SDBJTVlISEJk?=
 =?utf-8?B?L2liTkQvWENrOUcwUjg0OHZhWUpMaWM0QUlhRDJDeG44STRIUEx0ZlRQOTgw?=
 =?utf-8?B?dUsyMWYrMldnYUs2b3JBWUlOVmhFWG10V0RXUldkM3FCMTJBQU8ybi90U1Mv?=
 =?utf-8?B?QXVOWTByZ1ZvYlBoVVJUaXNQbW1wQmFYSlc4cU5IUldVWjMvREtTd1BkakNp?=
 =?utf-8?B?emtlVzBDNnBIYTF5MXMwK3RiOEx0L1k0Vnc0Q3FwcCswWW12SU55SVBvZ1ZQ?=
 =?utf-8?B?Z2ZkSmowcTlXRGo3Z280UWh1K1A2MEZRZ2FHR2V6MU5HT3ZTUUNZQ2VERytF?=
 =?utf-8?B?d1JKa0ZDQlUrajhMNTUyYVJnU0Y0TytpQ041c2lUelhpcWVGdlBKeENFUVA5?=
 =?utf-8?B?aHoveU1HU0xnUWdQQ1FFSU5Gb2dIVi94eDZqR1hqNGY2YmFnOWRxWGFnL0ZC?=
 =?utf-8?B?ci9Fci9Ob0h4TDdNSEc5WHJmdHNrWFRoLzhzc3BtUm9wQnVHZjRFeStTTXBQ?=
 =?utf-8?B?SEQ5WGpHWkRHQXR4bjdPTTVoamdEb21aRWJXVEF3R054aEI3K09GdXpteVgr?=
 =?utf-8?B?QmdzZ0VhZDFWSWR5YzdXTDJNWndnR0lGeWNQb2Z6cFdyZWFOU0RkcWg3V2Zy?=
 =?utf-8?B?NXdLZWd2NjV5cFJDNXIzTWxKQUhSRmJmbmVyaUNBQVVpTmI3Ti9UVktZWGlN?=
 =?utf-8?B?V0tsVEh0SDhlTXBhZ3lLYUxESC83b2F2Q3V0eXdUamFJKzhZQkVYKy9hZ3Zp?=
 =?utf-8?B?K2tubThGeGlBS3FVM0Ixa1IzQUhwWTk4ajc2dzU4OStEOGpFRDVzT1Z2OHZp?=
 =?utf-8?B?cWczUXlIV0lUMVc4QngzNFVPVUNHRGY0SG5MbjNPeDl6b0hRVWFjUlM4Q2h5?=
 =?utf-8?B?OHNYbmlHTEZWTnpzd3Q0TjRyclhMODY4UXJvR2trcFNqU3ZPSDJxaE5lY3dj?=
 =?utf-8?B?dTltREJYM1NRYVRKUTVBdGgveXFLODVxcnkrc1BhREtvVzJVTldwTW9yMHpk?=
 =?utf-8?B?WnFOWG9QSkdlL3FnWFptZ2JSWGw3S28yNEZBNWZyZC83QlpqbENSaElYY3Vq?=
 =?utf-8?B?RkI3Q3Z0N3MwT0tvYWpVaVhpOWM3ZWZjbDRwSy9TSU5mV1lQZ1FYeGQ1bDFR?=
 =?utf-8?B?dzhiOS81SklraHZyNFRubmpraTRYR2QyN1JwbUtHQlRnalJhUmxNN1lKcnNB?=
 =?utf-8?B?TkovbmtJSmtSdEJkc250bURxRzlQNjFkeiszS29BZHlBSVB0WEpWelU4am4x?=
 =?utf-8?B?ZHZMbmhxUm1PbFN6cS9BQnpkZFFxQmNtTmx5MitXSFpEMmpNVHhyZHIvY0tt?=
 =?utf-8?B?dGF5ckRXbzJyYVEyeTkzWnRtZHd1K2h1R0tkbTUyYmJkUGdQM25xc0w2alI1?=
 =?utf-8?B?RHdEQjN1MlpEMWJmM21yNXovazhENFBPYjlYc3Y1YkRTaEw1VHpYemFaSzRQ?=
 =?utf-8?B?ekpoM0c5bzI2dDJNV0VpcmRVcVFPZ2JNMktaYXNTUzFIajhWam5nanZPU2Na?=
 =?utf-8?Q?sxqK/v?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkQ2eGtKZy9EdWtxTnI5VVU1b3UzZEh1SXB1SEpTaG1MWnlORWFKZUJMRWZK?=
 =?utf-8?B?YzZuTGxoQ01IWC9PQ2VXQ3lvN0tCZ2hFdkRxZktuTTd6UHVFajVvazc1V2ps?=
 =?utf-8?B?OFBiL1B0UllCY2NQaU1sK2VScXgwOWxVTVRDNW5pVytiTTNteVRabXpORkdY?=
 =?utf-8?B?aVNiOHZJYys4OHorS0dNR2ZacUxmckpMWklQQXpHV1dHd0JrZmthbDhlellH?=
 =?utf-8?B?QVI2NmJuaFRQajVaNGpIbXFyN0dOdC9xRFpLOGp2TkRVbjNuZk9DdXB2OFg0?=
 =?utf-8?B?bmxvU01zZThjTlUrRVg3TTBuWWpUYmY4M2ZZem5aOERsbEhaalVFU09qeTBR?=
 =?utf-8?B?TnNGOVdvb1B3WXBldHY4U0xJdWs5YXgwNC9nakVOV2JkUG44aUVQRWFJbmRR?=
 =?utf-8?B?a2xJUHZ0OTI4MzJML0phVmF6Vnd5VVRoT3E4L0E0cGszM1FaUFcyVVA1SHdQ?=
 =?utf-8?B?NWhxM0FhREJrdWhyN05HaGtSdEVlVlB3NGV5Ymxlays2dXE5dUhad2dnN3NT?=
 =?utf-8?B?NW1WZmk1OUdyVDBvRXVtMFdyclVYc0tPeWNsaXh6MHhPZnhXQTFIaFJGbHpO?=
 =?utf-8?B?dEt0RVpNSHBhVmlsRjFVREt5Y3QvckZrRFdQaEFtdXl2bHY3MTBSUFRpMlNZ?=
 =?utf-8?B?TmQrcXdWQlh5SHZqeXNmU0NjOVJ2YlhSaG5mMXNrTG0ycVZjcFZSMFZ5ZFlO?=
 =?utf-8?B?TG1IbXpEQ05SR2ZYK0VJNGh2UEFzUXdQZUJYSW1vZ2paeXF0MTd2MFU5RGtZ?=
 =?utf-8?B?Uk5DMXM2bFdMZ0RmRk11VFMvZElZb29maUV4MXBHOTk2RVJ5WVhCWkVNQ1B6?=
 =?utf-8?B?UCtuS05iakhJV1UrZ2ZXNmJzdmFXbUQzM2lHQXFyNUNBbUR3VDZmSlRVSkJF?=
 =?utf-8?B?YUMyQ2x2QWcwVU1PcXBjR3hKZ1Z4cUNtQ3lZMXNTaXJORFd1ekJxMVhrOHNh?=
 =?utf-8?B?d2pheEI2ck4zbU5CMFZlT21mRFFYWitMM3VIZUFERmUvZ3FXMWcwRDlOUXZI?=
 =?utf-8?B?dGJSZGZXd2ViMmtCSkZueWF1U2ZNeGd1Z01VRWMyWnFnclBGYmRZWkdJT1VH?=
 =?utf-8?B?L2ttcVdZTmdIZHNCUHNRUVk5dnhad3NBOTZmcmkyM2xZMm95Y0x6VjY1NERw?=
 =?utf-8?B?N1o3SjlBUTZ5NDNFc09LbWpSczhETFVBVlo3dkJFamZvSTlxZUtCSmwxckIy?=
 =?utf-8?B?VGN0dmd1WGRISW1oaTRLWnBGNWN1RStwUUlyQndpVmNVQ0sra2dhMm12VFRq?=
 =?utf-8?B?Yzc1Slcwc25OYU8xYk5TaUMrZVY4N3kza3ZBYW9rUEtaazNMUkVpcmFHN0JE?=
 =?utf-8?B?M0ZKOXZJVVYrNkk2elE4WWo2RlBCSHcyVkoyZ3F2ZERsd1pwYXE5ZFBlNC84?=
 =?utf-8?B?aU9KR0xzdzY3VUZPTkNtUjZLUlFJZnBWVkpINXYxNGhWZHVvNnByc3hhb0JL?=
 =?utf-8?B?WkQvUDJVVm1HODU3eHNlYXRtck8vL0JlQjhTZE1BdVRKTWlSWTBVczUxSEdl?=
 =?utf-8?B?KzNHd21uUksyMldKaitxVnl4dVN2NEJMSjVOaVBhVVovUldjMlk5OEdFOWJl?=
 =?utf-8?B?cnVqUTA2WUZWVXkrT0ozMUFhVU8wL2xsOWxGTFU1WWZRZWZyL3FzMDFjc3dx?=
 =?utf-8?B?ckEwWG14TjQ2MFFKLzZzbnB1NUJ5WjhjSHZYdk5VQ1Avd0ExNE4rYWh4Y1ds?=
 =?utf-8?B?VFp3VTNPY3VobnI1bjZRVHJ0bEMwTTliWVFLTS8yeitBdTZWdU1GTzltTEY1?=
 =?utf-8?B?cTRTWFBFRUtNcVNiY045c2xOQlJRSjVsamkvZ080bXZjRnZDMCtkdktER3o1?=
 =?utf-8?B?TUtYeW5nZlBZQ3p2SUE5ei9hUG1oY0pxTmw5Z1QzcUFmM1Z2SjNPK0l6MGZy?=
 =?utf-8?B?Tm1haFpTeXViNVA4WXQ4alpsYS9peHlZRFl5Mmx1bFBMQys3clMvWk83UGVH?=
 =?utf-8?B?eEEzTnA3Z09TM0VLZWVHZCtLeDBGeHA5aS9xbnBVc2VrUjJOOXJNSFhoazFH?=
 =?utf-8?B?NTBqSG52ZlBMYUYwaTRQRnk2Ymg4L1VkSC9LMHh4Mlo5S09OYzdQeG1XTmJy?=
 =?utf-8?B?WHNzZlI0aEZOb3RBcngweC8xRGhzUVZRTllWRFdlQ3pVK1gzYmloLzlnSDV6?=
 =?utf-8?B?WXNEVDhoRURIN1pmL3B4eEdPc0xtNFFtOFJ3a2lXUW9LdVYwNlZSVTArS3VK?=
 =?utf-8?B?SEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4498df57-7126-47ae-1942-08de1c547af9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2025 10:17:09.8762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMQL9mJSJ8rcwj7O2rhyhhyJihDIbZa0Cnb2u0tPEGg2KFTG57/ji5isdFRtcAge6a/EG7mPIvExfTTtGMKnyrl8G/p9tUZ0h9MquCS9bcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8230
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762337834; x=1793873834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DoEAAQEqK+DOVBTUAwxS6KeG+5DqX36X6IbHyXoRGOg=;
 b=gCFXKmliThZnLmvjp7kSAgD9wk08HiY7SGRsdDnVGhZqX/hlCaC+kb/1
 ORcPBV3jx4rBvfLVvNeKRRRnchLODoxPAWrby/tHSb58B0wB56HQyFNDU
 u3SNDxxBXWav2ZG1fZkO/Je7b/ChzVqq5WHa8pe0X0R6NXa1v7xPCF9xw
 g2Yai99coHBOY96DOxoOYcr+J3HjsJOKOwvcWtpHIb4ZplQU8AhnxwPfq
 lpE3dmCOnJceU5uD6BxDvzsfbgCmhtdbYNXkX7+PcCzci1yhf9+j2QFAO
 FR2F1zXSJUBzgkp4w/zkYPxRCjVLIgrwZ5Wtsfanm0LZwN1Pr8+G1JrQA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gCFXKmli
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [query] i40e: Clarification on mask.src_ip[0]
 & tcf.dst_ip[0] usage in i40e_vc_del_cloud_filter()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQUxPSyBUSVdBUkkgPGFs
b2suYS50aXdhcmlAb3JhY2xlLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciA1LCAy
MDI1IDExOjAyIEFNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6
ZWxAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50
ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGFsb2suYS50
aXdhcmlAb3JhY2xlLmNvbQ0KPiBTdWJqZWN0OiBbcXVlcnldIGk0MGU6IENsYXJpZmljYXRpb24g
b24gbWFzay5zcmNfaXBbMF0gJiB0Y2YuZHN0X2lwWzBdDQo+IHVzYWdlIGluIGk0MGVfdmNfZGVs
X2Nsb3VkX2ZpbHRlcigpDQo+IA0KPiANCj4gDQo+IEhpLA0KPiANCj4gSW4gdGhlIGZ1bmN0aW9u
IGk0MGVfdmNfZGVsX2Nsb3VkX2ZpbHRlcigpIGluDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jLA0KPiBJIGNhbWUgYWNyb3NzIHRoZSBmb2xsb3dp
bmcgc2VnbWVudCBoYW5kbGluZyBJUHY0IGZsb3cgZGVsZXRpb246DQo+IA0KPiBjYXNlIFZJUlRD
SE5MX1RDUF9WNF9GTE9XOg0KPiAgICAgICAgICBjZmlsdGVyLm5fcHJvdG8gPSBFVEhfUF9JUDsN
Cj4gICAgICAgICAgaWYgKG1hc2suZHN0X2lwWzBdICYgdGNmLmRzdF9pcFswXSkNCj4gICAgICAg
ICAgICAgICAgICBtZW1jcHkoJmNmaWx0ZXIuaXAudjQuZHN0X2lwLCB0Y2YuZHN0X2lwLA0KPiAg
ICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKHRjZi5kc3RfaXApKTsNCj4gICAgICAg
ICAgZWxzZSBpZiAobWFzay5zcmNfaXBbMF0gJiB0Y2YuZHN0X2lwWzBdKQ0KPiAgICAgICAgICAg
ICAgICAgIG1lbWNweSgmY2ZpbHRlci5pcC52NC5zcmNfaXAsIHRjZi5zcmNfaXAsDQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUodGNmLmRzdF9pcCkpOw0KPiAgICAgICAgICBi
cmVhazsNCj4gDQo+IEkgd2FudGVkIHRvIGNoZWNrIHRoZSBpbnRlbnQgYmVoaW5kIHVzaW5nIHRj
Zi5kc3RfaXBbMF0gaW4gdGhlDQo+IG1hc2suc3JjX2lwWzBdIGNvbmRpdGlvbi4NCj4gaXMgdGhl
cmUgYSBzcGVjaWZpYyByZWFzb24gZm9yIHJlZmVyZW5jaW5nIHRoZSBkZXN0aW5hdGlvbiBJUCBp
biB0aGlzDQo+IGNvbnRleHQ/DQo+IA0KPiANCj4gVGhhbmtzLA0KPiBBbG9rDQo+IC0tLQ0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5s
X3BmLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxf
cGYuYw0KPiBpbmRleCAwODFhNDUyNmEyZjAuLjE1NTMxNTdkYzUzYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMNCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMNCj4g
QEAgLTM4MTksOSArMzgxOSw5IEBAIHN0YXRpYyBpbnQgaTQwZV92Y19kZWxfY2xvdWRfZmlsdGVy
KHN0cnVjdA0KPiBpNDBlX3ZmICp2ZiwgdTggKm1zZykNCj4gICAgICAgICAgICAgICAgICBpZiAo
bWFzay5kc3RfaXBbMF0gJiB0Y2YuZHN0X2lwWzBdKQ0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgbWVtY3B5KCZjZmlsdGVyLmlwLnY0LmRzdF9pcCwgdGNmLmRzdF9pcCwNCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKHRjZi5kc3RfaXApKTsNCj4gLSAgICAg
ICAgICAgICAgIGVsc2UgaWYgKG1hc2suc3JjX2lwWzBdICYgdGNmLmRzdF9pcFswXSkNCj4gKyAg
ICAgICAgICAgICAgIGVsc2UgaWYgKG1hc2suc3JjX2lwWzBdICYgdGNmLnNyY19pcFswXSkNCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgIG1lbWNweSgmY2ZpbHRlci5pcC52NC5zcmNfaXAsIHRj
Zi5zcmNfaXAsDQo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKHRj
Zi5kc3RfaXApKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUo
dGNmLnNyY19pcCkpOw0KPiAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAgICAgICAgICBjYXNl
IFZJUlRDSE5MX1RDUF9WNl9GTE9XOg0KPiAgICAgICAgICAgICAgICAgIGNmaWx0ZXIubl9wcm90
byA9IEVUSF9QX0lQVjY7DQoNCkdvb2QgZGF5LCBBbG9rDQoNCkdvb2QgY2F0Y2ghIFRoaXMgaXMg
aW5kZWVkIGEgYnVnIC0gYSBjb3B5LXBhc3RlIGVycm9yIGludHJvZHVjZWQgaW4gdGhlIG9yaWdp
bmFsIGltcGxlbWVudGF0aW9uLg0KDQpUaGUgY29uZGl0aW9uIHNob3VsZCBjaGVjayB0Y2Yuc3Jj
X2lwWzBdIHdoZW4gdmFsaWRhdGluZyBzb3VyY2UgSVAsIG5vdCB0Y2YuZHN0X2lwWzBdLiBZb3Ug
Y2FuIHNlZSB0aGlzIGlzIGNvcnJlY3QgaW4gdGhlIElQdjYgZmxvdyBoYW5kbGluZyBpbiB0aGUg
c2FtZSBmdW5jdGlvbjoNCg0KY2FzZcKgVklSVENITkxfVENQX1Y2X0ZMT1c6wqDCoMKgwqAuLi7C
oMKgwqDCoGlmwqAobWFzay5zcmNfaXBbM13CoCbCoHRjZi5zcmNfaXBbM10pwqDCoC8qwqBDb3Jy
ZWN0bHnCoHVzZXPCoHNyY19pcMKgKi/CoMKgwqDCoMKgwqDCoMKgbWVtY3B5KCZjZmlsdGVyLmlw
LnY2LnNyY19pcDYswqB0Y2Yuc3JjX2lwLMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNp
emVvZihjZmlsdGVyLmlwLnY2LnNyY19pcDYpKTsNClRoZSBJUHY0IGNvZGUgc2hvdWxkIGZvbGxv
dyB0aGUgc2FtZSBwYXR0ZXJuLiBBZGRpdGlvbmFsbHksIHVzaW5nIEFSUkFZX1NJWkUodGNmLnNy
Y19pcCkgaXMgbW9yZSBhY2N1cmF0ZSB0aGFuIEFSUkFZX1NJWkUodGNmLmRzdF9pcCkgd2hlbiBj
b3B5aW5nIHRoZSBzb3VyY2UgSVAsIGV2ZW4gdGhvdWdoIHRoZXkncmUgbGlrZWx5IHRoZSBzYW1l
IHNpemUuDQoNCllvdXIgZml4IGxvb2tzIGNvcnJlY3QuIFRoZSBzYW1lIGJ1ZyBhbHNvIGV4aXN0
cyBpbiBpNDBlX3ZjX2FkZF9jbG91ZF9maWx0ZXIoKSBhbmQgc2hvdWxkIGJlIGZpeGVkIHRoZXJl
IGFzIHdlbGwuDQoNClRoaXMgbGlrZWx5IHdlbnQgdW5ub3RpY2VkIGJlY2F1c2U6DQogLSBUaGUg
ZWxzZSBpZiBtZWFucyB0aGlzIHBhdGggb25seSBleGVjdXRlcyB3aGVuIGRzdF9pcCBpcyBub3Qg
c2V0DQogLSBNb3N0IGNsb3VkIGZpbHRlciB1c2UgY2FzZXMgcHJpbWFyaWx5IGZpbHRlciBvbiBk
ZXN0aW5hdGlvbiBJUA0KIC0gVGhlIGJ1Z2d5IGNvbmRpdGlvbiBjb3VsZCBhY2NpZGVudGFsbHkg
c3VjY2VlZCBpbiBzb21lIGNhc2VzDQoNClRoYW5rIHlvdQ0KQWxleA0K
