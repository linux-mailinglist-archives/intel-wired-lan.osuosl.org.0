Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6454F942915
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 10:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6EB7406FA;
	Wed, 31 Jul 2024 08:23:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ob2Lah-1wkNM; Wed, 31 Jul 2024 08:23:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CEDB40710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722414210;
	bh=lFGL+4WH9zRrCrwttLvvK0Xn8ibIMh8g9FVOySCcJA8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rsr0ufMfcRrpsRXqcK1UYSVXCO9mSb/r3+bdM6mgHRX7kk8mmtbmywiFGYqhKu51j
	 CKgCxHae3x2QZ/kXBcpWsyiP2VJMZcnid3UzCvv3VL/j1vYNjuNNpp5LbkEkOWYAAj
	 XIScy62a6tMW4r6RCij7ay7Dg0hCkx++Yd3/ykdFHe1oKn7zbPxlZq8RbFTbTcfcQt
	 6rH6e3fse23WfFtXs0B4FOK/Fd4Ir3Ni3RdmP+QKEDmfx8SGL+Q0ure/FvfTfTbbZl
	 kAjPODzFCMSxiyG4xrrkmymfokwezIToVWYcEOKuzkZl2Qc6DL7vP5eErOWj6JvlcP
	 clgaljHN4oVqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CEDB40710;
	Wed, 31 Jul 2024 08:23:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40F701BF57B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 08:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 399C2406C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 08:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oXtygsKJjkes for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 08:23:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B384E406AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B384E406AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B384E406AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 08:23:26 +0000 (UTC)
X-CSE-ConnectionGUID: t+lWmltDTsaN8u5L0koIrQ==
X-CSE-MsgGUID: mU0STWCOQgedSQYcRYTZUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30900846"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="30900846"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 01:23:01 -0700
X-CSE-ConnectionGUID: RQ5TAjN7Ry24BKFxHcpl1g==
X-CSE-MsgGUID: PziwBqaNQhWA1Y1Q6GlRBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="59402329"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 01:23:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 01:23:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 01:23:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 01:23:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q8BC7SQwj5ZgF8GCtB286ybAA/jenr3hb4Jf2rdojPOshlN2lkAoYPeF1GANakM/oxDm25nLfaP+2nkEDy28Sl+6J8MoUE+KM7HejzEWler9ACP++QjgAODgXcMZsgdu5xDBCzsU7/b9BW/3PleO/8xvp+el6bm3BHE/eymm5wZ9zZAxybgUc1UB92mfyyLsiSB+BJ5JZpF+DPX2ODt4Fl736S+ctnTByXsE7j1HcMlsXcmXLRZk+dtpCDXcdmhQvexXtCSyvbuQ3mQ9+HvogiJi87uGMuBhpogj2CxdI7jGkWyiZNfT1bqU38Jnk5mFpNf5sqGDsYiSu5pyt5di3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFGL+4WH9zRrCrwttLvvK0Xn8ibIMh8g9FVOySCcJA8=;
 b=LnwrqcmCka9NY5AcMwKosCAUBVQwsNRPzXQeH+BP5TAsgHv2z+ZWw5RGeCEP8wby3de4Y8noXgcTUwAWg3INWtV+8+KJjb0ZVsJSgD25hyRnHuel+/PfGS/ul/xQ6fo+Nm2ddu8VD+Zb53jR23i2ESQAnhY6vOl5R76ODEsVu1N+oIdabOXqKOLo9Rpo/bAe5OxIWgESeiw6UsSLe3aT3iEgq0ILxKcdCZjq5pxPGAMHHzdKRtsuCavoeh1spwAJYBwOyPKKt9MNXhYmE+8u5EbYIhOcjmI/h6/pF75uSwzepvZkceMTs/4JbKhelFh4h4aHRU9DBTOhfbyEJmCGMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7245.namprd11.prod.outlook.com (2603:10b6:208:42f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 31 Jul
 2024 08:22:58 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7807.026; Wed, 31 Jul 2024
 08:22:58 +0000
Message-ID: <a3682c39-054e-44f7-80c9-b181264c2413@intel.com>
Date: Wed, 31 Jul 2024 10:22:53 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240730105121.78985-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0089.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: 6932ee50-54a7-4546-4b84-08dcb139fc6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Snc2NEthL2d0aW5kNExiQXFzODhwN05JWVg3akhFZkoyRk0rbUY4eWtoNEdx?=
 =?utf-8?B?ODROU0FsckNER3BKR3RjaHk1aEMvZWVjL1QyaWw4U2U2bWwxVi9JSitpYXdB?=
 =?utf-8?B?V0dnaDRxOXVrRWpQYmtSMGJmM0gvVmF0NkJtdkdnb2laMm1xQXRCQ1N6UHpp?=
 =?utf-8?B?a3JXRkptaVpVTXd4MDNYUGZVRGtVdGxSRXd5VTloWUlPVWhKTnhNb21jbG9T?=
 =?utf-8?B?eUFTVlFrL0g5OXlRUkc0OG1adTBMaFptWFlyZVovUzdxWFNYaFNNWS9vcDZW?=
 =?utf-8?B?OVlmcmlUeTl2RDdCMmlnQXIzUlNzbmRJL0FaQ2c4d3lGR1NXb2hSRzRLdXhO?=
 =?utf-8?B?TXF6Q0ZNS2NEWlBjSGxjZkdIVXhrRUcvai9ybzVtOGszSk0zQUZRZnJqYlV6?=
 =?utf-8?B?NE1NM2VUcjZTdnorVzc1dTVVeWVrRXh0ZDMrU3ZHdlRvM2RoNE5uVEhvRUUv?=
 =?utf-8?B?Uzc5ZmI3T0dXOCt2R0xBWjEvbkQ1cVhCZ3hlbUVmZWczQkE5bjM1NHBMSGdS?=
 =?utf-8?B?OGxIdlN1cXhDdHlZeVhQeHlHckZpaUZVN25xejk1RWNvSjNhdzlWUCtsZHhq?=
 =?utf-8?B?allraEVUcnBCbXgreEtKUDBoUmtNL0dYaWlOTlh6ZmpsZVpTYTljd2Y3aGhm?=
 =?utf-8?B?eEdLeC8vMUpLT1ErNkRiYmxnMzQxV29MNFRhcGhSM0tNOWRMZjAvZWp6dGhM?=
 =?utf-8?B?b2dqTUtXT0lmWVZudXcrbXV2NFhteGFUS0tpZXJ0QmsyVmRWNDQ1TWtUWHZP?=
 =?utf-8?B?SjFEU2Z4OHhQamVVWXBvV09oTnBaUXBxdHE0NDA2cjNCZWIzVk11MFFEQ2tF?=
 =?utf-8?B?SVdqT3RQckxEZVF5ZXVMa3NVOVlPZFR0Yk0yaFU3Vlk4Y04yNVpwcEQ3bXR2?=
 =?utf-8?B?bHdydVJpWkNsQWE5RCtPY25CUzNvZmtET01lYmRGTDRQbWdSb1kzcGxFemZp?=
 =?utf-8?B?RW9oZTgvcWQwSEZmNjdJRXFBdVp2TWIyeGcremJvVzRMQ1R1aGQzRzhDMm5r?=
 =?utf-8?B?RHlPRmtaRm52b3ZYSnp2R1FHUFAxSlRzTkRSdmNKN2xsZHdMbWlxVC9qa2FI?=
 =?utf-8?B?bVI1TXp6VTFpQVlTN2x2anBjSGVhOXQ3clNmSHduTnF1MkE0VmZIU1ArRW9Y?=
 =?utf-8?B?QnFWTklOOTFyRXpiYmZuMmpTZUxxNzhJSm5ZTElvSlBuVy9FOU5JaVhYSkNK?=
 =?utf-8?B?QkpKSTQyd2FFbkhNNE5aUmJMNVpUUmRZc001V2NQblJ5V1grZGlIaitOeDQy?=
 =?utf-8?B?UWJhZng0RjFraTVkbnBzR1VOL2tHUnp6alJZZGEwaEpMRytpcmFqS1E3bGNv?=
 =?utf-8?B?S3Niam9MTFRjUG4yMWNlZUlTcTBmOWR1UzRzbno2QWZ2UW5wbXk2SDZtWUt3?=
 =?utf-8?B?YitrS2R1b0RGWWFXM2ZXYnNESnBFVjN5K2lnTklIUDMyUWE2LzJ5R1JBSlB3?=
 =?utf-8?B?ZFByZzJOYmUvT3FFK3hpTDZQbGJUYmwxQzlrUjdSQUpEZHFzc1gxUzV6M2Vx?=
 =?utf-8?B?VjYxRlBScC83dDFWa1lLVURmRDk5UFlSVjhZaHdnT3JKUDBCWXlCWnF4eXFJ?=
 =?utf-8?B?cnpJclYzdnNTZ0FSTUlmSVpGTDFmWkhnWERobStOMnp4SU5sZGZxWWorcENZ?=
 =?utf-8?B?MDFXZFl0cG9UbXl3bHQvbytVYVlsMjh5TnoyZEtaQTBhaWtIM0R2VEE5OUQ5?=
 =?utf-8?B?dXd4eWdlNzlqTWVrR2pxWjZhTnJNVzg4eFNlRjlHbGIxSEtJRUFOenlLdjRK?=
 =?utf-8?B?dmNXSnVwcXlqRmJYZ1NGZ3lsMStHMk9MbzJNY2NleTgyb1FTOWdySnRnaVN0?=
 =?utf-8?B?bmRjSkNhcExUL3MvT3lZUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjhJa24rRGF6eXY1OVlqNWNLcFJhWXIwdDVvYkhCb1lIYVgveUVFTDU2WFNw?=
 =?utf-8?B?enE4S3dVNUo2Z2MvVThaNkRXUmZYUGtBL2dHMzFZWG1wTGZkR3B4QTVYVUpq?=
 =?utf-8?B?T2lJOVZZZFNoNDdiV3N5RGl3Q0w3MkltUkovbHBZYXhLR1pRemRaZUM1UEUw?=
 =?utf-8?B?QnFSSUxSTWQ0dUlFNzRqTzBiZFdCSEJxY2w2ZzJWNWd1NFFlYm1tc3hETDFy?=
 =?utf-8?B?Qi8wMUdGRjdFV1RIejZzMm9oQ3J0b0d4bEtCSFJ2YlJmM1d6c2s2UTZ2RE15?=
 =?utf-8?B?ekpObFNsOVlNTFFLeFdPZGRrT08vME5aYXdHdllMNFYxT0ZCOWtuKzR3R0dZ?=
 =?utf-8?B?cXEzNEhaVXEyQ3lBSWhyWmJib1RqclE2M2pGbVVzcDk2TWRZU002UmROQ09T?=
 =?utf-8?B?QmlkNTZ4YVh3VGtrVndrWW1EQUkzTzQwODFTZ3g2ZDBKVHc4NWRxUkl5NmVn?=
 =?utf-8?B?L1A1bzZmVGpsaGNZcklXYW5vOXI2bnVRZ1BCR21wT29RcUVEWTFNQ25Wb1lC?=
 =?utf-8?B?SHE1ZWRJSGFjTlZBYTRUYVJHeXQ3SnpRejVneGRIVDZhYmVWRGhGRGx3akdY?=
 =?utf-8?B?eEZHMGduZHFSMTdKU3huVnc0RXFrbEdvY0MxSmxJNmtBcDRVQzBSc1cyZFQz?=
 =?utf-8?B?ZkxLMDFGWURZMW9EYzd3NWlPRWs5Unl6SHI4VFJ6YjBkUkRrREdacTVsamdU?=
 =?utf-8?B?NjQ4R1JzRzdPeEg5YmY4NWpyaXdRZHpTeXFuWUJsYTl3MG5GeUdiZHpqYzNk?=
 =?utf-8?B?NEZ6cUN3ajhxVnlFYUUxR3F2T1RzZEp4WjIxMVZYZzlnZUJqaW5PdXFOdEcz?=
 =?utf-8?B?ck1uRDBuazRlajdDS1ZJdlByMlc5V205Z0hKakk5QXFtTjlpRTZpdjJ3TWU3?=
 =?utf-8?B?dmdFU2ZvbjhyYUViWFJGZEVvdUQ3amc4endFMEFyYSszRzhxdE5hdnkvYWRp?=
 =?utf-8?B?K1RYckplUjNRRUVCRXZ6YUxlVWxOV1NGeGNHQlI2cG0vSTZ3bFBQMmZ0R1FU?=
 =?utf-8?B?SEY5TnpaSXQvcDhUOFJKOTdVWjArTFBxeVlhdExEbG1YNHJQWGxLLzE1SmJv?=
 =?utf-8?B?enhoNWYvNG0vZHkyZUxMRktUTy9YMVpzSUtLaFZ5bjhLV04vYjdBdW5yK2Fy?=
 =?utf-8?B?bjhIRlQ3V1kxaUtWS3IrQ0dtT2FkdTlvd0U1bTdNWWs0VnpJbVVIeitDaFpy?=
 =?utf-8?B?UDZFemUyU2pnMzlzYnk5eXJRQ2l6c1dEZFkyRUpxTHFGdlhNSkdydDZoZm9P?=
 =?utf-8?B?U3A5MVV1a2ljV244R2N6VmgxdlRDcGlsYmlXM0h5RWprZkFRRWR3L29ZbkFE?=
 =?utf-8?B?dGJXOVorbk9DNTNTKzJpR3g0ZHZINmRKbDNGQk9welVPSzZjam40Z1dwaTZI?=
 =?utf-8?B?TnFyN1JZTG9SMEdUN05oemxLa0VzNVFvWFRkcHRUMTNQSGlXMUZLSU8vTDB3?=
 =?utf-8?B?ejhhWDNiV1JzLytkK2JkR3ZZVXZXRUx6dm8wVWxDeUZKb3ZlWnV0NEM2Q3BG?=
 =?utf-8?B?UGpnTzFQd3c1Ymp6b1VXeUNlYVBrcTB0RnJJUkZwNW1jRnRpdXRyMVc3TU5B?=
 =?utf-8?B?Z0UrQVNiMFBCWkJuNWkzMUtZRTNIaHpKNEU0ODR0TXhNNmc3elVST3R1Ym1i?=
 =?utf-8?B?dk9wNVJuUThTcHVzbUU4blVUa1RyVSt5Y09lR3JScUMwUXdmTEdzbGR2NHlP?=
 =?utf-8?B?YSt6NjR3NHhOSE42UElkdE4wWUs4NE1TMGlaSnVzbVcrNVNFMk5JMlNIVm9a?=
 =?utf-8?B?TGNqc3lVbWpiWUJPY05ESSsvMW9EUk1wcmQzaW1LRUhrSlAwMmhid2JoTHNE?=
 =?utf-8?B?Z0YrRWt3WWF5SFhuTkgvYkwvWXlGRHY4VHhWOUwyS1ZIek53RFptQnNieU52?=
 =?utf-8?B?N2JqZ2xmQXJ0QzhES2RYU3lBdjdQVmVIZGd2L3JVT1k0Tm1YNWdTWlBySzBJ?=
 =?utf-8?B?WEpnRzJ0U1RvWTY3Zld5WXFOSWlTVVpVY1dSSTRyN1FxdVdXbTJGUUh1Z2ti?=
 =?utf-8?B?ei85YkprcS9Wdlg2YUhUMTN5L2JHVERVbXQ3QnBPRHEzYUNpcmltbmM2M1pY?=
 =?utf-8?B?MXloK204TjErZzZMZWRFMVZZRTBjUGt6U3puOWdYMUdGYmYwK0FhNzZpR0hS?=
 =?utf-8?B?Q0JrOVlrUzNwZlovSGxDTGdZZ2xHY0EyeVdQeVYzVGg1VHpicTZ4SEt0Mm5x?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6932ee50-54a7-4546-4b84-08dcb139fc6c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 08:22:58.6936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7cqLbdXpW2IKaQvUHW03RgQNt4CsFWM2exVEySg7mkpEhpxnATrq2+VqObL12xQqjtOTmRs72fIcmrvN3gterR93t9nY/tPsNVOs7z3zBQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722414207; x=1753950207;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ue46GMa+DOAfuRS5dd3HGeDXfi3pjJyd9tACsVpm6jY=;
 b=b+FaGUB23LqoeOPoBEy0yGyd5swbcpTAT7blU2f0E500gcp3gGXRfqh6
 CWtz7qnHK6xwQjh4jl9Tv+rmhIHvZkaewMPOEntUMVme8GDOxeLT9AJks
 VGF2kz+8+KKoI/mu6RftKe1BrgTeUWSXhG+s4bC9Gn0EdwMV6X74itspJ
 TJE6yEN2EM6a5XgNjRuRnAR40WfFCuvryNg4iQO9/PFp++R6cKYm26Vks
 TJOtWb5wQUwW5pCIMf4JoLehb1yZeDFuvyiE1gAD1VDlh3Q7ovqxMWGYD
 j1NTHtxw8j8oZqELxv24p29LNFLx2ivRUT5iEDxOAn0vu1t61jalnuIrG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b+FaGUB2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
Cc: simon.horman@corigine.com, edumazet@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/30/24 12:51, Wojciech Drewek wrote:
> Enable ethtool reset support. Each ethtool reset
> type is mapped to the CVL reset type:

not CVL, perhaps "device" or "E810"

> ETH_RESET_MAC - ICE_RESET_CORER
> ETH_RESET_ALL - ICE_RESET_GLOBR
> ETH_RESET_DEDICATED - ICE_RESET_PFR
> 
> Multiple reset flags are not supported.
> Calling any reset type on port representor triggers VF reset.
> 
> Command example:
> GLOBR:
> $ ethtool --reset enp1s0f0np0 all
> CORER:
> $ ethtool --reset enp1s0f0np0 mac
> PFR:
> $ ethtool --reset enp1s0f0np0 dedicated
> VF reset:
> $ ethtool --reset $port_representor mac
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 64 ++++++++++++++++++++
>   1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 39d2652c3ee1..00b8ac3f1dff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -4794,6 +4794,68 @@ static void ice_get_ts_stats(struct net_device *netdev,
>   	ts_stats->lost = ptp->tx_hwtstamp_timeouts;
>   }
>   
> +/**
> + * ice_ethtool_reset - triggers a given type of reset
> + * @dev: network interface device structure
> + * @flags: set of reset flags
> + *
> + * Note that multiple reset flags are not supported
> + */
> +static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
> +{
> +	struct ice_netdev_priv *np = netdev_priv(dev);
> +	struct ice_pf *pf = np->vsi->back;
> +	enum ice_reset_req reset;
> +
> +	switch (*flags) {
> +	case ETH_RESET_MAC:
> +		*flags &= ~ETH_RESET_MAC;

this line is equivalent to:
*flags = 0;

> +		reset = ICE_RESET_CORER;
> +		break;
> +	case ETH_RESET_ALL:
> +		*flags &= ~ETH_RESET_ALL;

ditto

> +		reset = ICE_RESET_GLOBR;
> +		break;
> +	case ETH_RESET_DEDICATED:
> +		*flags &= ~ETH_RESET_DEDICATED;

ditto
you could just move *flags = 0; after the switch statement

> +		reset = ICE_RESET_PFR;
> +		break;
> +	default:
> +		netdev_info(dev, "Unsupported set of ethtool flags, multiple flags are not supported");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	ice_schedule_reset(pf, reset);
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_repr_ethtool_reset - triggers a VF reset
> + * @dev: network interface device structure
> + * @flags: set of reset flags
> + *
> + * VF associated with the given port representor will be reset
> + * Any type of reset will trigger VF reset

why not to support just one type of reset here?
(that would left us with future option of different behavior on
different reset type requested)

> + */
> +static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
> +{
> +	struct ice_repr *repr = ice_netdev_to_repr(dev);
> +	struct ice_vf *vf;
> +
> +	if (repr->type != ICE_REPR_TYPE_VF)
> +		return -EOPNOTSUPP;
> +
> +	vf = repr->vf;
> +
> +	if (ice_check_vf_ready_for_cfg(vf))
> +		return -EBUSY;
> +
> +	*flags = 0;
> +
> +	return ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
> +}
> +
>   static const struct ethtool_ops ice_ethtool_ops = {
>   	.cap_rss_ctx_supported  = true,
>   	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
> @@ -4829,6 +4891,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
>   	.nway_reset		= ice_nway_reset,
>   	.get_pauseparam		= ice_get_pauseparam,
>   	.set_pauseparam		= ice_set_pauseparam,
> +	.reset			= ice_ethtool_reset,
>   	.get_rxfh_key_size	= ice_get_rxfh_key_size,
>   	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
>   	.get_rxfh		= ice_get_rxfh,
> @@ -4885,6 +4948,7 @@ static const struct ethtool_ops ice_ethtool_repr_ops = {
>   	.get_strings		= ice_repr_get_strings,
>   	.get_ethtool_stats      = ice_repr_get_ethtool_stats,
>   	.get_sset_count		= ice_repr_get_sset_count,
> +	.reset			= ice_repr_ethtool_reset,
>   };
>   
>   /**

