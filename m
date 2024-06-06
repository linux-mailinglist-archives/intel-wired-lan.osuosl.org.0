Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFD78FF319
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 18:56:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F7E08477F;
	Thu,  6 Jun 2024 16:56:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jMEhys5nUUCP; Thu,  6 Jun 2024 16:56:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB21A84775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717693017;
	bh=zupAdKmCHi7hLcns1onsQjVEDOo3w/K1dLO5EjIerHE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hT9gbbaRqIktzB3vI39S8JBiVTISKWEhvm/1IC0n/9POQ2p+IHh4J6uYZUr3XrKh8
	 plERbO2B2maJtFE/TDytK1ttiVReNzycvhN244z1ONPrfz+xQWDpsD13FxNIizDwJy
	 muvpdb/wjIa9yCndWblLE5IlssZbGy2dIj47W79FrwVWVqlCOsAxPkw7TEjkmv9P3K
	 7jQd2MI6RTmryA+jn07n/VvLa+ElXmMCeUPB9XhQPIv+srAAWi8ZtqCN/WbEh5fC6J
	 ZizXY3ZsmanGlVoNaepdEqoNdeZaa5WP85E65oaJjZ02IKFZ9/6TY09hXBRtueHd0i
	 +R4SYNFM4qF8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB21A84775;
	Thu,  6 Jun 2024 16:56:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90D3F1BF580
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A7E184775
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:56:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6PcznO4yH2Ek for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 16:56:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF2B68476C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF2B68476C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF2B68476C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:56:54 +0000 (UTC)
X-CSE-ConnectionGUID: UW1oaCwzSkiXMVpys44cNg==
X-CSE-MsgGUID: PrvzahM6Sz2TGs0q/W98hQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14601845"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14601845"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:56:53 -0700
X-CSE-ConnectionGUID: FLg5OS7iQfaHBSVu7KgO6w==
X-CSE-MsgGUID: oowkAmuHQcGYE2PAn9c0BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="75503903"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:56:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:56:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:56:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:56:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3c9ckGi/vij4zz5/QkhxeK8yw1jJMPmimPrVGO7Pi3OqtL22qAdoMw6GuS93Eq63lqkUi037G7FC4QBi+gRXNQZxg/yoimtgdTQUUDBM2aVDw4op6BCZsx8aWa78jx+nH35VlC6D4ZjTmUbM1v7bmPV1PhLw49GHhaSRpgZ3bFo4t9op9/YqIV1NOzej26yfg21TdinTvhsC/E/oVq4fncKKRfW/b0SppX3aDAGZtpdly+drz4bG39j0MLghtQH0s24L9Hkzjjo5lXSMlu4qWv0jtRkFdMh+Y1yA3N+v7O82e6/PASZoLN4LFTMHDcOJUqh61bUlIQquP62ocroEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zupAdKmCHi7hLcns1onsQjVEDOo3w/K1dLO5EjIerHE=;
 b=giZ4NzSr9P2oigyztPhFrPdBC9Pht2qhPRfIG7egb5oho24DELwQ7G5YMhbLZqW5Y4DJsgoGw5w9lriQ8TPNtGkNy5TGMPym/7HCSoSDMoKQWMvPDrIjK8axIqwhMvAyzQhjs4EBbNPiomhJZv4V4u9z/2Vmg0CDDmEOWGx+D7a9iCG1JnBZFy6+tAOvmsSr4qM0NT8cL0cgGz3toKL1oTUzYkDm6NjOBAtiHyu36iPGQKfZJYL3tmnRpqz38V09SUHK4UV5b7wWT/6CffdBYQ9SVXCnxYKih8sPmOLEEGkR+vp9aFAcTw1jVgZUT47W3NWimkezAEyDIoSNrCgKJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:56:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:56:50 +0000
Message-ID: <5440eaa2-9f3d-44e3-9299-8794cf5574b3@intel.com>
Date: Thu, 6 Jun 2024 09:56:49 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
 <20240604221327.299184-2-jesse.brandeburg@intel.com>
 <20240605174802.0add2109@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240605174802.0add2109@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0199.namprd03.prod.outlook.com
 (2603:10b6:303:b8::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6197:EE_
X-MS-Office365-Filtering-Correlation-Id: aa6cd270-c929-4291-474f-08dc8649a8f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkJzWmVJUXUyMEpIUEVLWlpPeW9ZVXpsT3YwcE1xVUtGa1RNL20wc1lRNGxO?=
 =?utf-8?B?QTJVWngzN2JROUxRVWViMHdWdEhYVndqZkRBRExRWER3VmJlSGttS1A0TmFE?=
 =?utf-8?B?cU5pU2MzZmhIU2hiSS9IcUJBZnNQYm9PcGpQeXc0bkNaaGdWZzF0K0t1bHdC?=
 =?utf-8?B?V29EVkZKUVQ4ckRLUDloWEVkY2ZaQUI4elFFUTJzMWJBVzZ6OU5ZRm5kVDh1?=
 =?utf-8?B?ekRSOHViVmk4SVBKZjJudGNxWnUwVmZwaTBNcG0vT1ZjU0E2NHBFcXBtcWM3?=
 =?utf-8?B?d0FueUYzS2dwODY0NGJhb1FBbEZSSEFKZUtlbUxudjkrQzJ4MHhmdHcwNmph?=
 =?utf-8?B?Zk9Iak84ZURBY1NGb1hGZkNnT09XL2FrUVEyMEQ2Z2VGWGZWakZwS05KUVNw?=
 =?utf-8?B?TjNRV0FrUnpqaFV5ajk1NEhHUERwbEtlZTNhM3JCaFduMEtJWHJ6M05POTJN?=
 =?utf-8?B?bVc4bUlXdjM5bERXZjA3czEvbDlEZklsQVN3RzJFZENzSDhCNXhxN0g5ekhJ?=
 =?utf-8?B?OUpwSm5BTm03a25ZOXIxUTlJVXdmaHdZVUVPcWdacU5xY2MwZkFkbXphYlRN?=
 =?utf-8?B?R0U0eHRPNE5OZkk3ZU1RZG9ldTZnSnhTS296czI5NnM0ZVlPY2kxU1JRVGpJ?=
 =?utf-8?B?QWVJTGRNV1dSSzVpaXM0T1ZFaks4K1FnVnp6OWlIRExiZko0eWJEZFptNWFi?=
 =?utf-8?B?WGsvTEt6dkUvYThOc0EzZ0J4ekJDUy9LcE01Q0g1cDZ5dEhaL3JJUDdIMUl0?=
 =?utf-8?B?UFpJazkyN2ZLeW4zTkdUQitFdWc1cldZaWFlZHFnNkZxNG5ZWnM4Nnd5Vy81?=
 =?utf-8?B?Ykw1T3ZCSGtPNmJxZnJ2c1FrNUNJWnlJYkVkcTZGSTV6NXVHQ3A1TzVNL1Nn?=
 =?utf-8?B?VUd6UzhmQ2VhY2dBTmh5NjkwQ1phdXFjKzF3cy9oOXZGaWptdW5uclZxdW1D?=
 =?utf-8?B?UFlkcGh5Mnc2MU0xRjg5RHZXdExYZkYvN1ZMakFpZ21makQ4dlpPbW14RUl6?=
 =?utf-8?B?SWVISS9pVU45THFXZlZoRUlIMkFJV2pEY3Q2N25UVGkxS3dZUW9QcGJIbDY3?=
 =?utf-8?B?Yzl5a1F3cUhHc3RzdDl1TEhxMWd3VmdKbEtkeVB4dkpHTkJ4TGFweUFVSzVh?=
 =?utf-8?B?WUdLU2h4USt4MWpBYU5IakcvRG15ZUk1dC80Tm4zOUprdkFMNjdXRmt0RDZ4?=
 =?utf-8?B?eWxOWTA2Y1h1K0JmaUlTME1Dc0RIRGhlT05wMzZMNGV5YTFoY2xzVkY3RVgw?=
 =?utf-8?B?Qi9EYldwTWh2LzRWVm1wL2tDUGx2dUZSSkpnM0ZaTDJhZmZCK1pIdTVEd2t6?=
 =?utf-8?B?STJjcnVCUkI4blVPVnJyQWRVQkpnZlIyK3lmaGJTVzBQWGp1L202b2s1Ulls?=
 =?utf-8?B?Yjh4d0YrczVpVG5WYlV0Njc2dVVaUmZCWlVvZTR4aFNDd1VXTVovNWI5WDda?=
 =?utf-8?B?dWZ3WkVIUkxxY2dBa3FRZDY4ZnlYQk9NZTl4K2ZRYXBTQTZzVzRrcFl0a2Ex?=
 =?utf-8?B?aXNhM3JaOE5wdnBzZEhWUnR3eDlxME9hSld4YlVwN2M5S2YxdWxDNHJaR0FT?=
 =?utf-8?B?WXdqM0Z4ek5kd2E2TDcvYUhPSWF5VlpvclB4TTQ1bXltSjhZUlhuRHQvZ3l2?=
 =?utf-8?B?NFp0a3dyR2FEMlExNjd3UFdzWXNuZHEvZko3VUhXenhmUjB5aS93NHYrcDdk?=
 =?utf-8?B?ZHYvZWp6NlkrQ2czTWVSTVVhSHhaaCtabGhmVHlBVUhURHFaemtHaWhVblRB?=
 =?utf-8?Q?Uh3rWY5f9/ENAutlOGQ2ckOdWcy+mpCvbNG7O1T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2orZE5mZVNZTUhRN0M3b1NNa2RyZlFoOVNNYnRxQW05Ky80SmxFVTBpRkE0?=
 =?utf-8?B?ZzBBNEQ2UDIxQm1UUmh2eDE0N0lGTFloN3pzazVOU2xWS1dMOUlSQ0FWODRC?=
 =?utf-8?B?RTA0RWdWdlBDNy9Ka2xoRUxBY2xBT2o2d3p6L1lHdEtiMlBEVkdxTlZoZHJp?=
 =?utf-8?B?YzRveUpRYzArTDZWeWpOTWFEVEtrR0VJcUZmKzVXRjY3Qld1Y3RaK1ZrN3VT?=
 =?utf-8?B?ZksxZkozOTY5bXZERmNRVTJieHgrbGp1LzdGRkZFallMZHpLT0cvckNMdEwv?=
 =?utf-8?B?a1JIeG9IT05HVnVSWUg3Mld4V0hudU5veDBGUkMyM1pNbDhyQzJLeG9ZL1Jp?=
 =?utf-8?B?WXVMeHhOaGZJY0pOK0RpOEV1VFhxRlVPdlc4OGVydDNsc1dLVVZaTktrWFpa?=
 =?utf-8?B?YjEvSTFqOEFXeE5JbGJqejI1SlcvTVZwUkgwR3Rac0NLTVM2K3FWK0F5bmF2?=
 =?utf-8?B?TVZSNWZ5YWY2SFZYaHFqUE1uMlcwMjIvQ3psWHRJTERqRjFYYmF5L1lNVjY4?=
 =?utf-8?B?VURtMkVvb3JGZFBUOFpycm1JRHEzTGlyNExvbHFXSHFqeFhpL2ZmdGFKS0ZK?=
 =?utf-8?B?eERDaU5yN2toOXU0ZWp3WWZ0OVZFZExETUEvaUtQMVBkQVRwbEs3MTdVNURr?=
 =?utf-8?B?WThCZXdYRzgwcTZJTS9QVUhVZkRIMVc0WElDL2Zic2VaS1E0Z1hiWGxabDIz?=
 =?utf-8?B?Y043K3VnR0V5aHdNRk9JL3B4UER5eVoxdmFaMldha2tvamFXZ2l6SXNCN2dW?=
 =?utf-8?B?VThxclQ4aDZ5ZTNHNFo0RzQ4UE1MZG5GRHYvRk93RUczbHlNSkRJUDBla3k0?=
 =?utf-8?B?T3BKb1d4WTNBOWR3NjA3bGI1bEpmb2s1QkIvaEZnTXA4cmQxYnNiRml1OFdV?=
 =?utf-8?B?eExuelM3clFqNlMwVU9LSE1vZTlYRnl2K2pCNWdQVTR2Qm1iY1Z2SGV4cG1z?=
 =?utf-8?B?K0dPc2puS2FEWnhqQ0t4bXcrNEExSUt1ajJGY1JyN1ladzFBZVZBV3dQQ1po?=
 =?utf-8?B?MkY2ZXpTc2ttR1djTGdiOW9Ic1p5eUIrOEs2bmpRZHVMWmtVSk5zenpXakpE?=
 =?utf-8?B?MVZ2alpob3MwN2xva3k4eTQzVEg1dU8vMXdDUnN3a3JBWGd6SURsYlF4VnhC?=
 =?utf-8?B?SjkwRHZkaFd2R1Y2U0pvMzYwNmUweWZqRXF1Q3Nsd0RLVElYckt5VzdqZ3do?=
 =?utf-8?B?N3V2WDAxR3dNM2xLb3NuV016M3VibUl3V0piT01YZHZkTUQ3RExqRy9McEds?=
 =?utf-8?B?dEJ3RFZveUlldjJNMjl5WHg0eUxHVHBwSGJwd0JrNFMyZGlpWUVETGNzSFQv?=
 =?utf-8?B?TkdicUowRUhFUWlYYUk0NWdlS09PZDU2QW9SdUxPS2FsaVpEVWFHSkpVMWFq?=
 =?utf-8?B?UTFScjBTVDdKZlk5cldYZlN4Q3JFMjNTMHMyU3cydyswT2FBWnBMWjBMOFdx?=
 =?utf-8?B?RFRBRXpPRWM1RlNYU1NCaHpWRUlCc3NXaElYRWJGeWdxdFc5L21JMVZ6RGRD?=
 =?utf-8?B?SFRsN0xoWlN4ZjJGL3p3eVBaYjFwYkxmQVQzMVdNS3BJdEl1dU9pcE9vR0pN?=
 =?utf-8?B?a3B1WlFCWjBnZVNZQUwveVV3NnVpUjYwTUMxQm1lTU1LL25uVkk5MG5vTjMw?=
 =?utf-8?B?SkI3WUc1SlB5ZGdvTUI3NG1aQis5YU5adG91bVk2eFVTNTN3bnZic1E3bHJq?=
 =?utf-8?B?dGtYYXIzQ0ZRL1Z4eVlPYW5DQTFnYlhZQ09hakR2UXVENHprOWhlTFdGMXBj?=
 =?utf-8?B?UnMyUmVCTmdXUDRkMTVnZEVML3VoWG1pR1lWSGRqS0NGV2dQaVNkUnhWTmtG?=
 =?utf-8?B?OTI1dEhHMndVTlVqMExENHhSeE1oOFhZWUNsVTFEanhBVG1VUXlVSWJJeGc3?=
 =?utf-8?B?dWZxdjgySmVZbWQ2RGRoa2s1bGhxSE50MFdmREZqd3BjNUsvcE1HNjM0Z3FI?=
 =?utf-8?B?ZDVObU1FS0R4Y0JEbWlZQUlLbG5kREdyZFZlZ3MvYWl5dHlNbCtrcEhuMXd4?=
 =?utf-8?B?WmpUc2xKVTErSVdYSVQ0blNBZXB1UlBabytKMm0yUFFPekJOVnBXTW9zdUZl?=
 =?utf-8?B?WUZKZmZuTEN0SVRVd2drRi9uZk92eEpYdlJFVVlab0dSb1FrcmwxTkpmSk9D?=
 =?utf-8?B?eld5QWNKdEE3c3owSjIrUkFVYUQwR0o5dmNGSGR4TEVOaG54eFNGVktuTlNv?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa6cd270-c929-4291-474f-08dc8649a8f3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:56:50.5808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2U/bckovQ712IFt9fXMYJRlDXMMdAPHV+v70QssGXk8EufBdsWbf2XT5Zm3Zc7Uj2/yzx2b3fLTJvABGqkHV3WDf8CfGW1pMvTOA2chacOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6197
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717693014; x=1749229014;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rSh5ZdA/Ds2OU74oBU789vQ+ny++SJrao7pn6axPlzk=;
 b=HZ4AGAOT2n0E5IR9D4v5W4z5xuR4ELkZ+es5g0lpylRjNPcXlJERNJJL
 YAjiqlrNfTV6rYkrcEMtjShfSPRGk6ZgGq/ITd41vFQpyO4ww/DLpcrYq
 SF7qcvrZ+1PZKHCmB7CPYGg3AgQF9Wq8u5U7fgpgdBQw0reH82jWAnr/V
 cfB0mpIdawwH5fFnmWvCpPHC2ks3ZzA5Vo/LiLx6OQLqw8J8feZz/ke9c
 Vjk1k5a/cBORoqyJr+wPSfiOJ5vpdYRE3ZAmlYRlYr7hQtEpI7v7WotDa
 vBCXZvK0/CrcJHL+fG70vnK7xtswolXedDPk+fGSo+8L6QnBGlWfonehA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HZ4AGAOT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] net: docs: add
 missing features that can have stats
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
Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org, corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/5/2024 5:48 PM, Jakub Kicinski wrote:
> On Tue,  4 Jun 2024 15:13:21 -0700 Jesse Brandeburg wrote:
>> -  - `ETHTOOL_MSG_PAUSE_GET`
>>    - `ETHTOOL_MSG_FEC_GET`
>> +  - 'ETHTOOL_MSG_LINKSTATE_GET'
>>    - `ETHTOOL_MSG_MM_GET`
>> +  - `ETHTOOL_MSG_PAUSE_GET`
>> +  - 'ETHTOOL_MSG_TSINFO_GET'
> 
> I was going to steal this directly but:
> ` vs '
> so I'll let it go via the Intel tree :)

Yea, this needs to be consistently ` here for rST formatting to match.
