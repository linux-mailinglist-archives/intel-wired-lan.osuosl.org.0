Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0788B15C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 00:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D729541788;
	Wed, 24 Apr 2024 22:03:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SLG0W24dHHmu; Wed, 24 Apr 2024 22:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3F824176C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713996228;
	bh=EL5SOa238U14reTf8TpJ25hneFI6wt7s7yZSzCeUdU4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oov6X0JmzN/aMm511YGno36xaGktulemlGlQNXxbN20X3DirNXT3aY0GA11Gq5G/g
	 VK+ooBvEfAEKFEiMnB3vLeht2k1lD3EAz7/xEE1vwpV5XZFifW/FsjHCaGBvKyQ7Z9
	 iYQg9qjarRjjWAGpPLGxlfzt1A5AmhgLxiDhe6SKOFYFEeOVRjoLUFjaKJF/pbW3oa
	 VFikOReSJRehZNNCTS48W5KZoUW/s1YShDFmEbarl4QT/rJTExMqLJRECOXZYAgcHi
	 E1FsWgdCHnISTqa0g/2y3Fm1lIlj0XplqSnnRSk4Ml5TrkSx6ZYgoXTuoxUa/+P1cq
	 cyZcjKgtGRMew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3F824176C;
	Wed, 24 Apr 2024 22:03:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5DBA1BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 22:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0B61401C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 22:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hd8P_haby29e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 22:03:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A6D54013B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A6D54013B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A6D54013B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 22:03:44 +0000 (UTC)
X-CSE-ConnectionGUID: WnZiu0lvQaqaW0x3oZArgA==
X-CSE-MsgGUID: EZBbRPrSQRGGAj8FKaZ3Rg==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="9872431"
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; 
   d="scan'208";a="9872431"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 15:03:12 -0700
X-CSE-ConnectionGUID: 9/xhAnELRS6JRsyeUKpTpw==
X-CSE-MsgGUID: hVSjITzkQa+tYINU1ZtWzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; d="scan'208";a="24732017"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 15:03:12 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 15:03:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 15:03:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 15:03:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzD9g2RwFy9uud14rgkj0HGjQpji8OII2eppP5rPoYpX1Ri5GCfSE5h5B6tZV860b5ehp47l5mqa7293W4VNFO6GsM9TvpRzoe7WTyZgQACJQpJ8mBR12PzXgXnBW2g8N1J+7TGcliLCA2ERQBtdjXg8KQXfS7lBEwZhJBcBDVeWmfWWPaTlhx6uSvXckHBnlOhuJZJoJDO0kriElE8ksftoMJisHahUMsD0K2suSPKdiobQRV9L5+5KNSVGCHVBn98TJpU/Tt92kdhXj4NNhLBdKUqTdGqXRT+LHtgYKS9JsotIPdAoNAh8qnIaLHsFZyZLCnHAD7wngrGs6ByzLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EL5SOa238U14reTf8TpJ25hneFI6wt7s7yZSzCeUdU4=;
 b=JaALimzBcmlEbTYwjM9zhlXd1PU27Nh7BSsqeaUzn0xT3/I1ebgvNte2EbZqANjbWzQoPN6dvZWCx7OXn1etUvcWNKGXrltjVnJPUvqTlx5UHlyXEt0njkMmz1kkg4mqqFz6yRx5fSXbjuSRWQ3Jp5Zof1pt3EZPX2yWjo82uAMtZkHCDnOyzM9N7cJYsSBAjH7SGqYxKp1xQgNl6g/pKF7DdBN4ydod+yAWZsUQTcmgH7wXBvvZopb2ZzgQ7Jt1iVHVuqCXA3zwaAl/x6EJzLRvqnJecV4RPjVX0XsBjrn8RfAoXT6jj6m9LS7xP2iUAlHSbh1Uci0R2qHwEaNwog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB7397.namprd11.prod.outlook.com (2603:10b6:8:103::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Wed, 24 Apr
 2024 22:03:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 22:03:09 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>, Rahul Rameshbabu
 <rrameshbabu@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
Thread-Index: AQHakVImAv3UAJQRp0C2N8nCSI8M5rFucOuAgAWZzYCAA/je4A==
Date: Wed, 24 Apr 2024 22:03:09 +0000
Message-ID: <CO1PR11MB5089E8856F06AC88C2B76F6AD6102@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-9-mateusz.polchlopek@intel.com>
 <87jzkue99b.fsf@nvidia.com> <9d8e656f-1b04-4fc5-a5b4-c04df7d34fdc@intel.com>
In-Reply-To: <9d8e656f-1b04-4fc5-a5b4-c04df7d34fdc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM4PR11MB7397:EE_
x-ms-office365-filtering-correlation-id: b03a9a7a-db71-4e99-8931-08dc64aa53f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bmZZcHA3R3RqVXo4QUd3M0pvU3lYUzJwalpwWEtqa0VscXRrMXRFcVVENndD?=
 =?utf-8?B?aXdCWWYzMjdrdWtEMGJlM2J5U1VYamxzRHNUWGRSTE5HNHBJbEZNYzZHMSs1?=
 =?utf-8?B?eFdkMUw5R1Z0bzB4UjBuU2ljZEVhbGxjNXlIRStwaDA5dkhsU25GWkh6dmgr?=
 =?utf-8?B?VUhFRFNlZXNCaDNuczlrejFPazdwcTlLaVpBVUV6WndUZ2w1WTQyOGVURmhO?=
 =?utf-8?B?aGxlOVRJYjYzb1dmRjgvYUJxVEpZL3pYem5DNmdSQ3gzK0Z4MGFiTUJjeFhp?=
 =?utf-8?B?cGlQWHR2c3NJNDhhbWdaS3J6Q1BKdXI1Rkx1UlkyVW1rRWFMbDB2cEpvRWVL?=
 =?utf-8?B?ajAyS0Zxc2NjV2F2QU5DM0QxdWdBTjNyTmZScHYrT1hsTnQ3a2UxQVUvanM2?=
 =?utf-8?B?OGM2QUozU3RaKzIwYi9uV2RoenVKZUZ3a21vMDRJQWhrcVFvcmpwTWE0c0ZJ?=
 =?utf-8?B?TW1SU2cvT1NKeThBSTR2Q0JtZDlHeVFEbVkvR1EzM2VBSUlsU1dqMUVPRjBu?=
 =?utf-8?B?RXhlRDdzOEhuTU9PQnpabmpnRXhNL0EvZ0pMaUxzTk81QUJhaXcvTHl3ZzU3?=
 =?utf-8?B?T20vS0RBcVQzOGxaTXhUWURLRmFETVFKbDFGNWN3dHdOR0dSa3YySVdWTnlI?=
 =?utf-8?B?b0NqUU01VTJKZWJ2K1c1Q1lFbXZMdTJYeUZJYTM0WTN2OGNhZ3NnaHRnY1lU?=
 =?utf-8?B?UkVMejhkYXNwWmo3eG9Pc2N3K3RTNVN1cUlhR1dNRTFnc2JpWEtOeWZzNFIr?=
 =?utf-8?B?aG9hcjZHNUlpbmhWU1RMZ1FnT3R1UEl1OS85SmRBUlVEbzIvR3I3SDA0UlVo?=
 =?utf-8?B?bFhscVNRd2NXUFdzU0hHaWRabnNCNVlEL3UyVFppYjY2Umdiemh5Y2lkNmJS?=
 =?utf-8?B?ZzJaR1R5NWpnVG83NjJTMitvTXk4bTFzRTRMb1BRVlVTdUk4eTNRK3dWeUR4?=
 =?utf-8?B?OWtheUc5QTlETFdoajZQQXNFejBVajVoclRFMXlOWEhEazE1YlluSGVzTzFo?=
 =?utf-8?B?QkdDa1M0c01jWVlqRTgwZWlTZUlqbGFpMU9TdDhSUTJpK2plNnZ5eVJMcVhL?=
 =?utf-8?B?b1JXVEJiTmRtL0NGdUtva2ZiV3V1cmFqUEJlencwUHNvMzNkWFZIME5kQUhv?=
 =?utf-8?B?ZG84cDRYdUU5RzJvZXJTMEFHTmhySnZnRFV0Qm1ibnpQRjk3K21DdUJyc3Bn?=
 =?utf-8?B?MEg1SGVSUlUvU2hSYkhQSy9VbDhCdFh4U2NnVHpsWnZSTnhDL2RySnQyK0lu?=
 =?utf-8?B?ank0V3NnaE5Vck01eHFnYSszYnlsa1lHUlJmNVl2YzQ1bE1RODgxT2RKczha?=
 =?utf-8?B?R1Q5S1Niays3M2FRRFpHREF2UmJISG5JK00xU0ZnMHFjZ3JOdWFQbUF0QzdY?=
 =?utf-8?B?OVVadzQzVmhsK2ovYzdHYXA0dE5xVWtVY2Ivcit5TER1ajI5ck00OUlQTk5C?=
 =?utf-8?B?UHBYRUtla2NJbVNUY25IbDhKdS9qa1liTFh1TWZSMDN5MUJNYjJtY05VNlZF?=
 =?utf-8?B?ZVZjdEFacVlyZUJRZ3lPZStqajNXUjhveDZsNE52RmRTLzh2cWFqNkU0OEoy?=
 =?utf-8?B?TTVpNmlWbUNlNmVLbmlqbDVnaTdJR2ZmY3pDK3h5WEpodDhyRTk0ajZ5b2FN?=
 =?utf-8?B?UkN6d1ZZTFppMkRDWC9BbHFOOURkOEEvUE9pRXZNQXNwNytCTFVIby8xekpD?=
 =?utf-8?B?WlUzaER2VG1hYUNkZ3czbGtSYWtMNnNzYmN6TEsxN0JGTWxTQzBXdTdpZkdx?=
 =?utf-8?B?L09YMTJUbXFsNVRRT1FtSkJjQ2I2ZEpmWG8xVzREbDJWY1NJNUZoSTRPSWUz?=
 =?utf-8?B?QjhyaGFnUFkwL3hac1hTUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0k3YjZ4ZCtUMmVMK0ZPdU9hVkZzbUxVUkd6NnlkbXJyNy9qU1ZXOEFGQ09L?=
 =?utf-8?B?Y3pIa1pyRGFiZlRTUzNsNjFSaXpQTnZCTGFLazkzbUVoYkF0ZzBPYndKbjB2?=
 =?utf-8?B?S3E3TlcrSzNNeWw2MVdGK3RWUlhoNzFjTWhZZmIrQ1h1WXdoTVBkaitscnBP?=
 =?utf-8?B?Y09KNnlxalRtUTdNYWZsK2JiR1B6ODIwSExPK2xBVGFqamVmQXorV2g3amE2?=
 =?utf-8?B?eTk0QUpOOXdnUitHWUZlbkRIM0I5MzZycDY4NEIwTzNrSEFlblFSZkU1ejBP?=
 =?utf-8?B?NS9xSlppbkg4alI0UW1tTGFxbTdIMkZpTWFHYTFhWEM3T1RuUm5Fdyt2Vy83?=
 =?utf-8?B?aG0rMkdNWi81Y2xldGgzc2JxY0l6MGtuODRvNWdwWGliQnFJMk02UG1SYUVX?=
 =?utf-8?B?cXhQbWR2VW5KUmJxem5LWk84VVJLeVVucHFQM1RQRVFKRXRZL3k2K20wNHFP?=
 =?utf-8?B?UGYzMXFYL0lqaFlVRC9PTXV0QUM5ZkZwODF0ZWJnSS8xSlVodG54VmtEbWo3?=
 =?utf-8?B?UzlGTUdtT2hoS2JUSGt2cXZwb1AzaytEbEJNbnpYRXV2MEF0eHVkcWl6bXZh?=
 =?utf-8?B?aUl1V3N4MUVDbHlKc284Z0cwS1VJWXVpc3NQb2w1RVpVM3BCWjhUcTArS2pk?=
 =?utf-8?B?Yk90eHZESmNteE5NRk92Nmo2ZDRWMFQ0TmcrZ21LMHEwZFJ2dHFCOWRSUU5S?=
 =?utf-8?B?MDg1UExaeGQ1b2VKMVlLWVRoWjBYdDV6TDhXYkFaa21NVW5GT0ppWjE0VWJi?=
 =?utf-8?B?WEJyWlkwQjR0eHNhUnYwUmIwM3NzZmkwVUdkNFhhcEtZQjdoM1UwV3RzZjRH?=
 =?utf-8?B?NlJRWm91WXFnYVBDbkhwVlFHeTdHTm55RXkrcmNzVzJIVUJqa3dqVS9TK0J4?=
 =?utf-8?B?b1NkWG9TR3ZRYlB2dTdjd0dJeDJKcGdNVmFRV3Zkc2RLdVFKWVNRanlSWjZ0?=
 =?utf-8?B?Nk5BWGEydkRmbHBkTzRlZVpIcXVsc3NBS0tydWpLM3BFWDhPSTlseG9idGE0?=
 =?utf-8?B?dUNVWXNSdGhqdCtnRy9qUUJQMmdZZVl6bmlzTTBiUTRTQ2lhZk5XY3RGN3NU?=
 =?utf-8?B?dnJra3NEamdjaFV4dHZ0YldKNkRLTWhhMWZWZCtQR2FFU1Mvczh2dG1NSVdZ?=
 =?utf-8?B?a2ZuZGh6SVpZVXc4eEVjYlNvUk5oSUZ5Q20xMWFqZUJLYVVib2FXa2Z1Z3RO?=
 =?utf-8?B?L1ZhUk1weFdKemxCR2dIaVB5cUZyODd3a1Exckt5TUlwUFRuYXQ0S2NabTJ1?=
 =?utf-8?B?Tnl3MWJmTXFZYThZdFlMZUtkeGdxREgyMXBrVHFHbisrRG9MZVZoS3g2R2pN?=
 =?utf-8?B?UTMrQXJwQWN4RURqNEdscFRBb3hvRkVxSmxkNHBhS2piN2dvRXZoN3luM0hT?=
 =?utf-8?B?dCtoRG8vMWdUYjU4Y0tWemdWUlV2MlI5L1NpdUFHMVZQNlJiQm5nenRYVjN1?=
 =?utf-8?B?TmhzdlZWTzhRNFl1dmNIV2VVNXFvSmJLbnpjOFBkUVNPNnRFdURvZjBYTnB0?=
 =?utf-8?B?Vlc1RlNSUENHUVZPSWJBN0tkZVMrK0MvbzlORVRvanRFWDE0UHNpVTBFTGRC?=
 =?utf-8?B?ZjdGSHBRWEJ6dENqWmtJUCsxTW5URTBER091cXJNTXRQVy9aUDJ3RXRaeVFF?=
 =?utf-8?B?S2lPVFdMblNrRDZpZEd3WTdkTk9VckQyZm9BRWE1RTNOc0EzTnBFM2Uvek9p?=
 =?utf-8?B?RUNISDB1LzFVeXR2TmxPZE1IbmlacFdnMlY5dFArYWN1V0Z6Ri9LdmRJM2Ux?=
 =?utf-8?B?bTc2T1VPT3NoNytvM1FNdVdqaFpvYkNWZ0dLb1hTMW9oZDA5L0pzd3FpSWxT?=
 =?utf-8?B?QmtWTDQzMWpCc3hQK1BwYnl1R0JLb1pIaXFBTVU3eUZkM1VvSC9jUlBwVm95?=
 =?utf-8?B?dHo4UW9Rd2ZTaTlMZjVreGxZSEh6azk2ZjNVc29sSTRRQmE2SzBTZGdyNlhL?=
 =?utf-8?B?UloyMmFOajZZV0xhcnorQ2V4VnU5MGRFbkFvUW1UcHUveGlkZ09XdXdVMUJy?=
 =?utf-8?B?cElaeXBsRHVGSDR6OThDRXdUcmxpRSsrZ3N6Ung5dmJYamlxV0huUEhiWWhz?=
 =?utf-8?B?YTE3MUtwVDBFenduUnR6VmFjQ21pdCthT1pja0RwR3lnaFpLSTc0RUcyNEVa?=
 =?utf-8?Q?T91cpnIUv0RrTVRGC/75cyO3+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b03a9a7a-db71-4e99-8931-08dc64aa53f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 22:03:09.5157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6CheUUlnjhlY5Uapf3UXjJ2mFekcEUSbTPbPO2naLm+5Z39EFpuQOW8kMjk9cS24zIqTUCBKDIKoSiUT/ss2OfXUrlHVOYt4Op49tcN045c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7397
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713996224; x=1745532224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EL5SOa238U14reTf8TpJ25hneFI6wt7s7yZSzCeUdU4=;
 b=Cth8i9wlDOJEqoLXnnYDcEdl8SpxzU1ludijNputqgJ6ynnvo6mhcPIj
 udtG9574yVPVb5AotkN9pbWxonFPun2hQ4zu/HOMfVfnwbezf3X4oLb6m
 hQRUtHnK/C34wtMC7Kwm5CgojmyAC5K/y6KqenclyJ4ac78jnDHp5EASo
 Fzn//5xNiM4oai8l3PN4uIXGOVWip/Nlqh2HaSCrmG/Dzxau+y3+lTQqQ
 eHluUzZLi70c4uDpEYaArahHt3MttzhL+rYPTDkfyDHKv4tHEDbtR/Zv0
 I1co+WZgx4T6IqA2VI6IkRxSWmpwzSnV+oteZE/Q6b+kcP122oRTv9sPv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cth8i9wl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUG9sY2hsb3BlaywgTWF0
ZXVzeiA8bWF0ZXVzei5wb2xjaGxvcGVrQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBBcHJp
bCAyMiwgMjAyNCAyOjIzIEFNDQo+IFRvOiBSYWh1bCBSYW1lc2hiYWJ1IDxycmFtZXNoYmFidUBu
dmlkaWEuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRl
dkB2Z2VyLmtlcm5lbC5vcmc7IGhvcm1zQGtlcm5lbC5vcmc7DQo+IE5ndXllbiwgQW50aG9ueSBM
IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRQ0KPiA8amFjb2Iu
ZS5rZWxsZXJAaW50ZWwuY29tPjsgRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJld2VrQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4
dCB2NSAwOC8xMl0gaWF2ZjogcGVyaW9kaWNhbGx5IGNhY2hlDQo+IFBIQyB0aW1lDQo+IA0KPiAN
Cj4gDQo+IE9uIDQvMTgvMjAyNCA5OjUxIFBNLCBSYWh1bCBSYW1lc2hiYWJ1IHdyb3RlOg0KPiA+
IE9uIFRodSwgMTggQXByLCAyMDI0IDAxOjI0OjU2IC0wNDAwIE1hdGV1c3ogUG9sY2hsb3Blaw0K
PiA8bWF0ZXVzei5wb2xjaGxvcGVrQGludGVsLmNvbT4gd3JvdGU6DQo+ID4+IEZyb206IEphY29i
IEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiA+Pg0KPiA+PiBUaGUgUnggdGlt
ZXN0YW1wcyByZXBvcnRlZCBieSBoYXJkd2FyZSBtYXkgb25seSBoYXZlIDMyIGJpdHMgb2Ygc3Rv
cmFnZQ0KPiA+PiBmb3IgbmFub3NlY29uZCB0aW1lLiBUaGVzZSB0aW1lc3RhbXBzIGNhbm5vdCBi
ZSBkaXJlY3RseSByZXBvcnRlZCB0byB0aGUNCj4gPj4gTGludXggc3RhY2ssIGFzIGl0IGV4cGVj
dHMgNjRiaXRzIG9mIHRpbWUuDQo+ID4+DQo+ID4+IFRvIGhhbmRsZSB0aGlzLCB0aGUgdGltZXN0
YW1wcyBtdXN0IGJlIGV4dGVuZGVkIHVzaW5nIGFuIGFsZ29yaXRobSB0aGF0DQo+ID4+IGNhbGN1
bGF0ZXMgdGhlIGNvcnJlY3RlZCA2NGJpdCB0aW1lc3RhbXAgYnkgY29tcGFyaXNvbiBiZXR3ZWVu
IHRoZSBQSEMNCj4gPj4gdGltZSBhbmQgdGhlIHRpbWVzdGFtcC4gVGhpcyBhbGdvcml0aG0gcmVx
dWlyZXMgdGhlIFBIQyB0aW1lIHRvIGJlDQo+ID4+IGNhcHR1cmVkIHdpdGhpbiB+MiBzZWNvbmRz
IG9mIHdoZW4gdGhlIHRpbWVzdGFtcCB3YXMgY2FwdHVyZWQuDQo+ID4+DQo+ID4+IEluc3RlYWQg
b2YgdHJ5aW5nIHRvIHJlYWQgdGhlIFBIQyB0aW1lIGluIHRoZSBSeCBob3RwYXRoLCB0aGUgYWxn
b3JpdGhtDQo+ID4+IHJlbGllcyBvbiBhIGNhY2hlZCB2YWx1ZSB0aGF0IGlzIHBlcmlvZGljYWxs
eSB1cGRhdGVkLg0KPiA+Pg0KPiA+PiBLZWVwIHRoaXMgY2FjaGVkIHRpbWUgdXAgdG8gZGF0ZSBi
eSB1c2luZyB0aGUgUFRQIC5kb19hdXhfd29yayBrdGhyZWFkDQo+ID4+IGZ1bmN0aW9uLg0KPiA+
DQo+ID4gU2VlbXMgcmVhc29uYWJsZS4NCj4gPg0KPiA+Pg0KPiA+PiBUaGUgaWF2Zl9wdHBfZG9f
YXV4X3dvcmsgd2lsbCByZXNjaGVkdWxlIGl0c2VsZiBhYm91dCB0d2ljZSBhIHNlY29uZCwNCj4g
Pj4gYW5kIHdpbGwgY2hlY2sgd2hldGhlciBvciBub3QgdGhlIGNhY2hlZCBQVFAgdGltZSBuZWVk
cyB0byBiZSB1cGRhdGVkLg0KPiA+PiBJZiBzbywgaXQgaXNzdWVzIGEgVklSVENITkxfT1BfMTU4
OF9QVFBfR0VUX1RJTUUgdG8gcmVxdWVzdCB0aGUgdGltZQ0KPiA+PiBmcm9tIHRoZSBQRi4gVGhl
IGppdHRlciBhbmQgbGF0ZW5jeSBpbnZvbHZlZCB3aXRoIHRoaXMgY29tbWFuZCBhcmVuJ3QNCj4g
Pj4gaW1wb3J0YW50LCBiZWNhdXNlIHRoZSBjYWNoZWQgdGltZSBqdXN0IG5lZWRzIHRvIGJlIGtl
cHQgdXAgdG8gZGF0ZQ0KPiA+PiB3aXRoaW4gYWJvdXQgfjIgc2Vjb25kcy4NCj4gPj4NCj4gPj4g
UmV2aWV3ZWQtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4N
Cj4gPj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+ID4+IENvLWRldmVsb3BlZC1ieTogTWF0ZXVzeiBQb2xjaGxvcGVrIDxtYXRldXN6LnBv
bGNobG9wZWtAaW50ZWwuY29tPg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBNYXRldXN6IFBvbGNobG9w
ZWsgPG1hdGV1c3oucG9sY2hsb3Bla0BpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9wdHAuYyB8IDUyICsrKysrKysrKysrKysr
KysrKysrKysNCj4gPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfcHRw
LmggfCAgMSArDQo+ID4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspDQo+ID4+
DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
cHRwLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfcHRwLmMNCj4g
PiA8c25pcD4NCj4gPj4gKy8qKg0KPiA+PiArICogaWF2Zl9wdHBfZG9fYXV4X3dvcmsgLSBQZXJm
b3JtIHBlcmlvZGljIHdvcmsgcmVxdWlyZWQgZm9yIFBUUCBzdXBwb3J0DQo+ID4+ICsgKiBAcHRw
OiBQVFAgY2xvY2sgaW5mbyBzdHJ1Y3R1cmUNCj4gPj4gKyAqDQo+ID4+ICsgKiBIYW5kbGVyIHRv
IHRha2UgY2FyZSBvZiBwZXJpb2RpYyB3b3JrIHJlcXVpcmVkIGZvciBQVFAgb3BlcmF0aW9uLiBU
aGlzDQo+ID4+ICsgKiBpbmNsdWRlcyB0aGUgZm9sbG93aW5nIHRhc2tzOg0KPiA+PiArICoNCj4g
Pj4gKyAqICAgMSkgdXBkYXRpbmcgY2FjaGVkX3BoY190aW1lDQo+ID4+ICsgKg0KPiA+PiArICog
ICAgICBjYWNoZWRfcGhjX3RpbWUgaXMgdXNlZCBieSB0aGUgVHggYW5kIFJ4IHRpbWVzdGFtcCBm
bG93cyBpbiBvcmRlciB0bw0KPiA+PiArICogICAgICBwZXJmb3JtIHRpbWVzdGFtcCBleHRlbnNp
b24sIGJ5IGNhcmVmdWxseSBjb21wYXJpbmcgdGhlIHRpbWVzdGFtcA0KPiA+PiArICogICAgICAz
MmJpdCBuYW5vc2Vjb25kIHRpbWVzdGFtcHMgYW5kIGRldGVybWluaW5nIHRoZSBjb3JyZWN0ZWQg
NjRiaXQNCj4gPj4gKyAqICAgICAgdGltZXN0YW1wIHZhbHVlIHRvIHJlcG9ydCB0byB1c2Vyc3Bh
Y2UuIFRoaXMgYWxnb3JpdGhtIG9ubHkgd29ya3MgaWYNCj4gPj4gKyAqICAgICAgdGhlIGNhY2hl
ZF9waGNfdGltZSBpcyB3aXRoaW4gfjEgc2Vjb25kIG9mIHRoZSBUeCBvciBSeCB0aW1lc3RhbXAN
Cj4gPj4gKyAqICAgICAgZXZlbnQuIFRoaXMgdGFzayBwZXJpb2RpY2FsbHkgcmVhZHMgdGhlIFBI
QyB0aW1lIGFuZCBzdG9yZXMgaXQsIHRvDQo+ID4+ICsgKiAgICAgIGVuc3VyZSB0aGF0IHRpbWVz
dGFtcCBleHRlbnNpb24gb3BlcmF0ZXMgY29ycmVjdGx5Lg0KPiA+PiArICoNCj4gPj4gKyAqIFJl
dHVybnM6IHRpbWUgaW4gamlmZmllcyB1bnRpbCB0aGUgcGVyaW9kaWMgdGFzayBzaG91bGQgYmUg
cmUtc2NoZWR1bGVkLg0KPiA+PiArICovDQo+ID4+ICtsb25nIGlhdmZfcHRwX2RvX2F1eF93b3Jr
KHN0cnVjdCBwdHBfY2xvY2tfaW5mbyAqcHRwKQ0KPiA+PiArew0KPiA+PiArCXN0cnVjdCBpYXZm
X2FkYXB0ZXIgKmFkYXB0ZXIgPSBjbG9ja190b19hZGFwdGVyKHB0cCk7DQo+ID4+ICsNCj4gPj4g
KwlpYXZmX3B0cF9jYWNoZV9waGNfdGltZShhZGFwdGVyKTsNCj4gPj4gKw0KPiA+PiArCS8qIENo
ZWNrIHdvcmsgYWJvdXQgdHdpY2UgYSBzZWNvbmQgKi8NCj4gPj4gKwlyZXR1cm4gbXNlY3NfdG9f
amlmZmllcyg1MDApOw0KPiA+DQo+ID4gSFogLyAyIG1pZ2h0IGJlIG1vcmUgaW50dWl0aXZlPw0K
PiA+DQoNCkkndmUgYWx3YXlzIGZvdW5kIGl0IG1vcmUgaW50dWl0aXZlIHRvIHRoaW5rIGluIHRl
cm1zIG9mIG1zZWNzIG15c2VsZiwgYnV0IEhaIC8gMiBpcyBvayBpZiBvdGhlciBmb2xrcyBhZ3Jl
ZS4NCg0KVGhhbmtzLA0KSmFrZQ0KDQo=
