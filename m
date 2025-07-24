Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF23BB111F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 22:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8120260AF9;
	Thu, 24 Jul 2025 20:02:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f2GhIm3pjBnR; Thu, 24 Jul 2025 20:02:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C51B660B09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753387370;
	bh=XQPvVfmY2f/6vW4LKqFzrsPH9ji3iuLEZlOtndrCZ1s=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=31sZx5D+4CW6/3JySTpJSfTOkxE5J/Dx/jdyRNaeTRdaMR1FG2b8hYbdHPDdG41GM
	 ZawNy160qkGX2dj7rvDry6uUdoQLc1eYb7+Kx50mvm0Jv82Lvk0aJWLJTBRk3Y/CYb
	 nNJytJgeeG/JDZw2lW4RCnTTzgxu5ICqTlKm0nwA60xzNd+zJRPlawvQCKkAOLS2jb
	 g2JHo+iIPXzNEOMYgYzyHEI3I0D4gQH1fbJVBHTLX0CSiS3zZUtU2fG9gAHXQyPDoc
	 nbAKgKv352KnxqScDELsk6wO8VKEup0eWwpDw63MAOCbooQqe8xJZtW2+eDLKRBvdg
	 lfnR+VQgxXM6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C51B660B09;
	Thu, 24 Jul 2025 20:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D8E0115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:02:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4335941B5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:02:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KABOhWDHYXG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 20:02:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71AB641A2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71AB641A2E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71AB641A2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:02:48 +0000 (UTC)
X-CSE-ConnectionGUID: WdP7uzaZQaKRwnvI4CDhOA==
X-CSE-MsgGUID: fRNBctM2Q76sTlc2zrXcfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55806367"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="55806367"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 13:02:47 -0700
X-CSE-ConnectionGUID: z0lrxGYnQHC4CabeTx9CIg==
X-CSE-MsgGUID: Cj0oNOEMSyuxTfsm13DEhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="160929937"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 13:02:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 13:02:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 13:02:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 24 Jul 2025 13:02:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vICzDdBezHd+GX33lYWZWWWJZ3vCLZOQeTbqn9dPdnwvs17kVLaPUiMLBvgvIqyrsnfeX32dtGirMepgNrElc83JCvBqHHnH3ro7bb/VixliMqSGtqS4e9imIPwB2REwODf2w3A9NXOTsVqReQE3HNuI7Og0bgMBvK0hd1RrS5w/Qe/6zAEMCEY29cONnEcGoGYPIynTZZw0mvIfAuo/m+Rim7UZPRSsdFxfFNADYCtSJwA1DhpbybLm2hTJzISXurTy0PkgyFfd9bimYUkjvZIjP5MhyuRFwW5kmO9xhJ/xfEVCVHMu9xrKyE6vBfvxkdVxCdIo8W1gXNWGtD7x/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQPvVfmY2f/6vW4LKqFzrsPH9ji3iuLEZlOtndrCZ1s=;
 b=alPjEeiP+K9pypYkRFD0KNK1AsuSNkmC4Px12BjPq5QW1x+o3XnT1mHO/nA6FfyzXAMthqpGSUszOlO3FVrrgLsWqejFTGazvWaFj/20KA2desl1OhctNqZdfKZgTAKxcvjmWtE6HTNdFoiJGJm1v+Hw/0J8MyfLY3mKYS07iZzEr7CLQ4gdREGSiK1rfdKZUzy6djatfFlCashT3OkrbHC3++0DnISR3gNUlrHQrCoBzhtEmltviPzhyqG8PQqFEpcTR5S14HDIkCNDwY3sAKgGrPbWqwuwjM5J09FfNi730uEZd7vqAHWZ+UErslECGVUTecXk7QkdH5NvswRWUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB6328.namprd11.prod.outlook.com (2603:10b6:8:cc::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8922.40; Thu, 24 Jul 2025 20:02:37 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%4]) with mapi id 15.20.8943.028; Thu, 24 Jul 2025
 20:02:35 +0000
Message-ID: <e8c0ec4f-e448-4a91-8496-c6d4ffc3aaf2@intel.com>
Date: Thu, 24 Jul 2025 13:02:31 -0700
User-Agent: Mozilla Thunderbird
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nitka,
 Grzegorz" <grzegorz.nitka@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>
References: <20250722222509.2178387-1-grzegorz.nitka@intel.com>
 <SJ2PR11MB845248E1F2A83B0860EEBFAB9B5FA@SJ2PR11MB8452.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <SJ2PR11MB845248E1F2A83B0860EEBFAB9B5FA@SJ2PR11MB8452.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0042.namprd16.prod.outlook.com
 (2603:10b6:907:1::19) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB6328:EE_
X-MS-Office365-Filtering-Correlation-Id: b8249cf1-2743-4909-ed31-08ddcaed0872
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVdWZUZPV3dHY2FDbWt6RkkvMnJ6QWx2QnFnNEZQdkt0Vlh6Q2lxcy9IaVlJ?=
 =?utf-8?B?SmxRd2VYekdNejVrcjdING5aZFBaTFYxait5UG5QOHE2Y1VRNWZpNEFlQTZN?=
 =?utf-8?B?WkdHcGtKejFNT1E4ak9TRlFqZ3NVS09ZajUxcnZ0Y21EdzdQRCt1U3grZDlk?=
 =?utf-8?B?cVpxSHN4OGRFSFVOYmZjU3IwQUpmU0xMVnlJUjc1OHMzNjBsM2VRK0JoRGND?=
 =?utf-8?B?Z3JwMTBUbkJKbnlQRE9MR2ozamFyWjRYZDZ6RjY1N2FEYVVERXpEQVRzTC9Z?=
 =?utf-8?B?NkxIVlNKaW5yNzcraUwreTMrSGhGVlRPNWNSQ0tMWEIrT1d0YUd0RXhGZTVY?=
 =?utf-8?B?bk9XMHk4RytPV1JJQXhiWFA1Um9YRG1VdzBwaHZEWmlXT3l1bEFsUm5vZHY2?=
 =?utf-8?B?ejBFNFpPd2EwT0dDYmFpcngzd0llbHFFMS9MaXE5TnhPTEptV3BPVjBqNUhq?=
 =?utf-8?B?MW5NYzlyK1JSWjV4ZjhsMFAyMGdiak1PSkpmajdVNnAzWXN6WC9EV3BLU2cy?=
 =?utf-8?B?Ym0yK2NxT1hxMC9BUU5uSVdEakxYWmRmT2E2UmpZMUtVc2djVkNlb24rMjNW?=
 =?utf-8?B?Vjd1Ukk2SEZBK1ZYSDgzRGYvY0VnS2x0d3JXdVQyY0k3dXN6MmE2T29mVGhw?=
 =?utf-8?B?bWZqN04zNnFzRlZDcjBxcTVqYVg3RmFnbEhVTWlmazJLOGJCUzJQQVhCMFJ0?=
 =?utf-8?B?RzFIQkwwc0ZES21NTy9tV0ZjaWlXeDVxVEV5cFV3OHhka3psVU1TbUF6cU5W?=
 =?utf-8?B?L0ZKUUVsTTJtUldINWo2YU5UVDl0ZVFIaEtDWG1pSkVIQVhKQmErZnJVaWhO?=
 =?utf-8?B?cFNyWld1eGNLY2pRMXczT2hIalloQ3htVFBacHcrUGswOXFMMWNtanR3U21L?=
 =?utf-8?B?S09uQzhxK2RwZ2p5Z2d3ZW05Sk10V2JGZDN6bkRPdFhIdzNYb0NHcXlobDFi?=
 =?utf-8?B?ai91bCs0cUUvdFZHdnR5V0kxNkpQM0tzN0JqSngxQkpRSEVnMk0xS0hHeXRi?=
 =?utf-8?B?ZkpCUC8vWHp2Yml2VitGZ0tSNEwvOWxhSmVpbkQ0ZmdSNVdpTTRnNGoySU9V?=
 =?utf-8?B?eFJoUnQxc1hLdDE5YjhlOXdGZVFhYXUwM0dMcHFEYnpsODNGNlViejQ0dG00?=
 =?utf-8?B?S2VITFFkUXNpY29VUWNoMmZpOHErTWpBS28vYmt4cEJiekdzdGF3V3hHV1BY?=
 =?utf-8?B?S0hYYy9rd1ZhRGxhbzBPcmFGTTBiOGVxZW0wRW1nckFQTkpCZS9MU2FzVmdj?=
 =?utf-8?B?dXI2Ti9JVnIvRWxHUjNWUnUybGZLZ0ZPQVRRbkZXOVByQUZjeXY1Y3haTUto?=
 =?utf-8?B?YWlmREUya1psM0E1QjFpdlMxTnhKVWZSMzVaeUNHcVhwOFVNekExWjlZZUFE?=
 =?utf-8?B?QjZjTER1UUJQL0VSRW9FamFrK3hsWitINjZSN2JscVJBQ09pMUFGS2t2N2dI?=
 =?utf-8?B?V0VxY1E0bDR6djh3TVo4ZFpSWU5qVWQ5TWxSQTViWit4TVFicHdmNTFVRGJD?=
 =?utf-8?B?Q05MU1dLUnpDd2NaMzhHRGRRZmFZS01IckdhZU9EZTNqUzE2dmhvaTJLUWdS?=
 =?utf-8?B?czUrdkRQQTRZNW1TdGEycEd3SUE5QkxPcXIzUG00ZTZaS1lhR2s3aGRRQVJv?=
 =?utf-8?B?OWkrUHo3ZE9wTnN4alJzT2VwMUg5N2ZRb2lEU2NEU0daV1lFeU94K2hlTGVi?=
 =?utf-8?B?aHJjbGZaVTJCZDduQngzcyt1TEU3S2Q3aXA0ZThncTM1OFRveWNrQ1N3V2wz?=
 =?utf-8?B?eDZTR2ZKNXNDbkZxcWhGOFJYcnZUYm9ldmZ6VDlWTHJYR1hoaHlhUDRDNDZu?=
 =?utf-8?B?R0toVHVxSi8rN1pQdVlKMHFVVzhmMjhRaUxyVFYzSXovMFVXWU5Xcng3V3Q2?=
 =?utf-8?B?OUVLM3BNTmpvWkRodWMrek02clNjQnNSUXRPZE9RUWQ4bStkZllyanA2d05W?=
 =?utf-8?Q?bsqLSGwyh3Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUpKbk54Z0lxYm9idDRJMHpFTUZrQmlJTkl3dkJCeU1sbEVNUk5TQzZRQlFO?=
 =?utf-8?B?Z1hSeFB3aTYxUnRHNlN3K2ZwUnl5SHU3dzZVa3MwZGU0S1F6Ym5yQklhdjY4?=
 =?utf-8?B?SmpDUXVrWWpkaTlDcXFFWmhWekZqVjczWkI3K0JLY0Z0a29SenZUNWEzc043?=
 =?utf-8?B?Vm9XbTY2UTJlRXoyM2RlaTR2WUYvZm0wb0Y0QUxORW80TFNldFA4OHIrbXRv?=
 =?utf-8?B?clpQUlZ1NkRtTHI5aUhaZDFpTjBKOXpjdnN1NlhFVFhUV3JINk9LNXNXalZZ?=
 =?utf-8?B?MTVDVmJyYzU4dFJ4M2JLME1SbVRLbjF6NjlRNWV3VDJ3TUJwT0o4MC8zVUFK?=
 =?utf-8?B?U1EvQ0xMNC9OMVdpVG5ZanNMZUhZaXlnYW5rc3E4aSsrVFlSbVEvOFA0cGpE?=
 =?utf-8?B?TDR1L3JEdzRFS2gxZ3F0dlZXN0FSRVBnWXdzeWdZajhuOURKVm9Gb3dqWERW?=
 =?utf-8?B?S3ZpRWV0U1BOUHNKQ3IwdDdvWDcvNmdodDY2NzNxTUhQdkZySUJPekhsUkxq?=
 =?utf-8?B?Z0Z4VEwvNUNHc0xGbWsxTEZvSDgrcUpXb25yWE5mQ3lMN25rdnRWcU9xRkpo?=
 =?utf-8?B?Y0VNWXRLVXVuemd3MzNmWEhZbmFUQXFIY1Jna0VaMkVrNjJ5ZEYzRjFUbWV2?=
 =?utf-8?B?U2t0QzhKUzlpMkFJVXJPNFBmOWhRdFNlNXBHd1NES09nRFk1MUFsMW5QU3dK?=
 =?utf-8?B?a3Y0RFlqdGtQWC8yOXAxSmplNnpUVHVkNWlwYnRmTnQydUY2R1JtSFcydHdK?=
 =?utf-8?B?eGQzbTc1R1dtMUhZTGhrZ3FMMG05dXYzVjVQSkQxSjFlc2JRbXU5NDlUYnd1?=
 =?utf-8?B?SC8yMHlNOUxWRjFiRXRpYTYweU41MVpJcWcvOUZJd0xaOFNpVmRlTTNzcytw?=
 =?utf-8?B?aDRNeEk3b2JrME8yZnR6SU5JMFF6MUROTGlXMXJQMlczUFB2MXJoTVRMNnZ4?=
 =?utf-8?B?Q21qNGMwdjY2MVQ1dU9MR2xvaEQvbFNSSnVWNmNBUWxJNVRPVkkrelVMOWlI?=
 =?utf-8?B?T3RXMnRlaEQraHQyTjRSb0ROQmp3SEdWUDNnNlJVdG4wWlN1VExpaWNRclpx?=
 =?utf-8?B?RW1aVzJTV0JBc0pnaWh3ZEtNY1NabThtSFB5TVlDbGY2TkRtOVptbmcrd3Zi?=
 =?utf-8?B?Wm9qL3RFSG9vK1UrUTlVVzExRkZ6L3lpaExlQVVwRDB5dDRqc0ZXdkVVQzVi?=
 =?utf-8?B?VmNRWGFadEVwQmZkNjhtSS9HZ0tNeEFjSmhhYWJzMVY0b2RVQ2RlRHdEVG84?=
 =?utf-8?B?clIyNENNRmVVZjhwYmxZWFRGMTdMeGFWVFhod2E3SWFiRnZVZm5ocUdidGlm?=
 =?utf-8?B?Y1dTMHhFTDRLNnNMdDNiT0tkSXNLL0tpWmx4ZE93ci9rQXA4ZEdjUCtFYmVN?=
 =?utf-8?B?dWVuY1Qyb3lCOEVzdUltVEhjSCtsY2hvckE5and3cVA4blN0WUMyOGE2Z2Vq?=
 =?utf-8?B?cHlpRG1VQWxhcVMyZHRqZFpuWU9VdXBxenQ1THU1ZXdRaWJNNWVwZE9IZUty?=
 =?utf-8?B?L2lXWHV0dHZ5S2tjU0NsU0ozOVcvOE5QSWFGYURDeUFTTzl0Q2JhQlVLSmNL?=
 =?utf-8?B?NjMvTllzZ0daMUdxUXl2c2ZFdGtSQjZCaDNzUWE3SFUwdHZYbkdjeSs1dWhB?=
 =?utf-8?B?TitOV1pSVFFVZGZUTkRVZkp5RDhPV0V5ZUVmVmcrb3hTTXF1RUhIYUxsdXov?=
 =?utf-8?B?ODNiTCtxUEoremNySHRsUzVSbjdQK0JlbTVldXluYWJaUlRqZUZrS0lKbnE1?=
 =?utf-8?B?YlhtSDRFdWhjby9GUmJnVlNBSnRnTENvZC9pK0pmNkFvcGxMNkhWMTN4dE51?=
 =?utf-8?B?R3U2ZzRkNGhONmVzbnU2ajFxU3pWTnp4YjlxV2ozUmJuMWRjeWxFdUJtNWwy?=
 =?utf-8?B?NXRMcHJjNm4vbGl1YjVvcXo0T0FRZUc2RlpPMDlWaWpsZzBJZURrSlZpOWNl?=
 =?utf-8?B?YWQxeG1tbm1jZExlNXFHeUN1c1VFZGZYbkgxeW9WRkRjN00xTDBuSjhoZ09B?=
 =?utf-8?B?MXFBbHZRczZwbm1kdHVSUFY5dS9tbUVtT1NDNHJOWUlQVWtxWHhyc2dqekJY?=
 =?utf-8?B?VURYSmpRYm8xTEpaTkkrR2lKUTN4UWdhM0EzRHg4MEpyYzVRczNINlZCdzZx?=
 =?utf-8?B?Ynp6NlJVZ2hKV3NHZHptTWhVMnp4WXA4V1RlSThYaEhvZEs2SU9RQStBalAv?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8249cf1-2743-4909-ed31-08ddcaed0872
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 20:02:35.6926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0CVLPBA0BQUdKyNVKSc5KMOVwpliIALWpvIaJaPxrbQzRth2TWt6O3CPWfYgkhmKcTw1l2CvyjBjXdYmWpTfmOnPSr18779FapZdpFUqN4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6328
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753387368; x=1784923368;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rm2uxUaejlEZmxmySyKJin2f5VPaIDSjxudqS5QnyYg=;
 b=VhS5ilS1l2VvPVx8vEEOTJdoc/WErEV0ipsF/xfA/Yrz5sGtj1vuXRf6
 YOkM7j7hy9WgcJcFNdbt6tJPFXsdhKnI2uT4B4c8590xCEcPaVF839NW2
 98iK9GqHhNCiCJtzDe1FbWBzUaXzlFZtlLqXW6S2m4aCR2K/cK+gy2cqU
 pHaPD2E2G9p+x5SAlS+lxYgUsjxekN3idwm2/NBAEgEnXWEYY2Ng8b81w
 odycfTWNTBhB0vjqVHli6mkuaMTOxIIaeQ7QD8UFYWRRvcfzUh5rQlYw5
 6WtPz3O8APgfv/R5JZGXiUYHXd/kfRsgGc3z4yip0KAFP8yvDglSIkJMS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VhS5ilS1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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



On 7/23/2025 1:17 PM, Kubalewski, Arkadiusz wrote:
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Grzegorz Nitka
>> Sent: Wednesday, July 23, 2025 12:25 AM

...

>> ---
>> v7:
>> - fix lkp error about wrong label name
>> v6:
>> - extended commit message with usage examples
>> - updated int ice_dpll_init_pins (removed E825 checker from
>>   if-condition, use ICE_DPLL_PIN_1588_NUM instead of
>>   ICE_DPLL_RCLK_NUM_PER_PF)
>> v5:
>> - fix lkp warning about ice_e825c_inputs definition
>> v4:
>> - rebased
>> - fix docstring for ice_dpll_cfg_synce_ethdiv_e825c (removed 'divider'
>>   argument)
>> v3:
>> - rebased
>> - removed netdev reference in 1588 pin initialization
>> - improved error path in ice_dpll_init_pins
>> v2:
>> - rebased, addressed comments from v1 (kdoc updated, removed unrelated
>>   code changes, fixed undefined 'ret' code in error patchs, use feature
>>   flag instead of MAC type chacking)
>> - use ptp.ptp_port to create pins indexes instead of PF ID
>> - removed CLK_OUT/output pins definitions as unused
>> - removed redundant dpll_netdev_pin_set call on 1588 pin
>> - removed checkpatch warning about SET_PIN_STATE macro (parenthesis
>>   added)
> 
> Don't think we need to keep full history, last version diff would be
> just fine.

I like to see the full history and based off the other submissions to 
the list, I assume, that's the general preference.

Thanks,
Tony

