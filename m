Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CD684D5E9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 23:39:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DBAB42EA2;
	Wed,  7 Feb 2024 22:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id js_an5Jmf0fn; Wed,  7 Feb 2024 22:39:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6401442EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707345584;
	bh=91ly/Vu+rp+qRLL8UkR0K3SkFe4FVtxseJXSaR1h9Dk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xqn9eLkCuu/+0qMwuMDiO7yIFfp/5C4M67HODKBCQCz2ZZ3C11ZLAnMB8re4xIWyF
	 UJUd/A2FkrsPtKsoGPvtoh9j2mjuiqskRfrkkj1BykwGBDCqGigBpbJMJO+BXnuXaA
	 uxyYuhQHprsBgqSBYIs2fyvdrxFp0H4nPk8hJJJnYu2ba7OWpY61MafBIfwv8AismM
	 Kyj0+Sw+B3JC2vakpRPtDgh8aSXTnrqHD6+ka8Y4KZp4lqzVuX1FHwPfJ+bKQPZ9dl
	 7Id3rBejkcN9Vmfc2uRfX/MueWrv+HqYdzwW8OrZNJHsW6uGBzHbe6LyXysYraUQAJ
	 t/THy/nZv/tWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6401442EA9;
	Wed,  7 Feb 2024 22:39:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30EDF1BF82C
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 22:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17F15419FE
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 22:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jh8_U4Eby-iX for <intel-wired-lan@osuosl.org>;
 Wed,  7 Feb 2024 22:39:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3586D400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3586D400D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3586D400D0
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 22:39:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="26539208"
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="26539208"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 14:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; 
   d="scan'208";a="1779100"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 14:39:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 14:39:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 14:39:39 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 14:39:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGnKt6t45xeKDPl8UN7oY5AuMlH95iMf2OWMEQt2cKprD/Iw/OUbdAl9eYwxKbEL/NoV33PDWGw0Xc+Vukfe4YraeZlEm5T2lIUfdCh04keY7IPBEp5/4loIKhjtRwnwSWAErbNXDNYxT1pMr1GLJxeG/YcdMQRpY1OT7FjVddzJ9cRDRV16CZLRxlkUjDy7LafoI7YS+cDDdoDBN/NRCAfwDe++eD8hRC3E/oEB0WkoWGb6Ox8qagO5QnOkBW1P4ZjArO/I76qvhV3X8FOG2XQ1MfAdHFZZr+wQSMQ7uISLPBbBnFZKp2YYgtjfz5r9bu58NJ+7/3BxOxnTS2Ux3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91ly/Vu+rp+qRLL8UkR0K3SkFe4FVtxseJXSaR1h9Dk=;
 b=ZKpj+XP1uKgn8GUVY5IXX5SJomCwBwVVpnszd8QaaOPbwaiwxDLLH7Q6N1Y4CCcM1YIe7EVutGSwf2/+Kj23Q2tAnel+yvo9h5d1hCj7K/g0meNDQNNY6z2IDDFRqOhrjcQFzIg/8PISCteBkH7t593gvwr6DRiT2o6ynl5HlMR4Vodolo96y+6Zdtz/kW2mrSp0n+/tkZqjsEHTeVb7YF1TpY9UAXfHIxYSuPFhocp6Oig1+hddsPPbKw1z+Vt65vFo3oLjB2xa9SroUwj2g7ozj947CAk0wSdCP7Av7zIuxbCc2IybaMbTic7+lkTGU/uPr2wJp70loJky8WSgfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB6381.namprd11.prod.outlook.com (2603:10b6:8:bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 22:39:32 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7249.038; Wed, 7 Feb 2024
 22:39:32 +0000
Message-ID: <dea67719-0a84-42e5-422a-d01f25715438@intel.com>
Date: Wed, 7 Feb 2024 14:39:28 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <20240127174803.20793-1-ernesto@castellotti.net>,
 <intel-wired-lan@osuosl.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
References: <20240127174803.20793-1-ernesto@castellotti.net>
 <bfddfb36-3625-ae0f-75c6-e46ac1ca482a@intel.com>
 <77d7b6bc0a3dd164ba1bdb05d6c1cf81da4cbfdb.camel@castellotti.net>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <77d7b6bc0a3dd164ba1bdb05d6c1cf81da4cbfdb.camel@castellotti.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0059.namprd03.prod.outlook.com
 (2603:10b6:303:8e::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB6381:EE_
X-MS-Office365-Filtering-Correlation-Id: e967d3cf-c4c7-447e-88e4-08dc282da6eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PaTaATUW42NkdvLuKfNNmjtR21vMggPKEaoKFc54abj6L3KuZSiXPKa++oW5YJH1q5VXVUUyeBQznnsm02wvDbd8NoWOvf8mRKFYHjErxqKF+l8LlGj4/tgwLuCROp+bebTti8IcECnHXbaCy9VwyM8aAHfhwn0MFEXKiRg1bHD7q6LhBm822F3kflSHL4qmJy78aHIEh5godHtFFzTr+Wpv3Qi3swKVrO+TtsnKPQ+8Egh71wISkTyMk9U+4ZowYJ42Odh8R511mo4TnfItcXdC9OMjEc20TczRyUBFbWwYEc+39mzEkxdo8bgLsJmZcVmZp7YgDY0mfwTY9tMELYBXejuqFqlgd8+7vhi4tVQrDo9GHVIurfP5qxB/Tv3NDMMQEucc+wxs2DDHTpCIcMyEuz03BRIMwdcy3HhsjHNAefCEva/mDmNNMKNZiY+++97n96ZaVwRjBqODULr3CqHcPqyWf3ot8OEI/jBbFrwvBa5347gCH4cOp5aZcwRJQ9fdJr8wYzHtHK2vEPItpWeHMSFJ2ekKBs5H0+rEEvLoFFIXHzWNK5sFNp2cFMqf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(346002)(396003)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(41300700001)(4744005)(2906002)(38100700002)(6506007)(5660300002)(6486002)(478600001)(8936002)(6862004)(66946007)(26005)(66476007)(37006003)(316002)(8676002)(66556008)(6636002)(6512007)(2616005)(53546011)(6666004)(36756003)(86362001)(82960400001)(83380400001)(31696002)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1RrYTdpRmhzZEZTZU1sSXRRSnhib3ZMSFB3ZlhRcnM3MjNFT1V5NGlCNkFq?=
 =?utf-8?B?blk2UzFoSXFCb2lLT0V3RFJja0d1UThmSzR2c0pVSVZNZGxqc0ZCZ0VRVUFG?=
 =?utf-8?B?Yk5xNVhwcVptWlpZS0xwcWNRT0ZqelhES2RJUmpFS2szSWZjTnV3cXlHV1pP?=
 =?utf-8?B?QWxoQTdaQXEzcmkzdFlxKzk0czlrLzg4NkQvbndGbm9adVp0MmhZbEFXZU1n?=
 =?utf-8?B?ZmVSUllhV2hnSHhGMXRkeUJoZWw3Q3k0Z2FCUjcydUh6bU0xVDh2ZUhVOE5B?=
 =?utf-8?B?RVhxY1NoVXhWSnNEd081Z3VhbGk1a1NVODVIQmdrRTlWMHZsNmNpeXkvWFJD?=
 =?utf-8?B?UEVTNEFKaitreFlROSs5cm5yK0hiejRLV1d1SHJ4VkozOFVSb3BxdEgvdHoy?=
 =?utf-8?B?bjNRRkdGemJUV0trTkhtTXF5QnBUYVZoQmN4N0FKUmhKU3dWcDhJZUYrMjFx?=
 =?utf-8?B?WWZrSU1NR29VS0xEM1A1blJqVVhjMWtydlhxVWFwRkxJVXdQN3Z4dFhmKzQv?=
 =?utf-8?B?b251OWJwN1VtVjIvNEtlNkdkZTMrYWVSSUJOMllUWmlZMm9DcEs0ZnBwV1ow?=
 =?utf-8?B?M1MwcFVoSmV4dUM5WS91dW8yNnIrS0hwbVh3NU1YbFFWSitFMFRCcW9sQlhH?=
 =?utf-8?B?bmFURFh5TlpBT0hhK09EQ0ttbkxackRGUlZjakVtQU5CT1ZWQUpxTFh6WG1K?=
 =?utf-8?B?dVNaS002UGI3TFBKRWlZZGkvVVNaMFpvdlJySHgybHpWMFgzLzFLN0pvSndC?=
 =?utf-8?B?SUJNWjBQWkp3RytLeHRlbnJSOUlZODdTZHoyMkllM3grRWpVZU9lbFZtYUFH?=
 =?utf-8?B?LzBQcXA0YmpqREdid0p0S3ZlTkt1aFU2THlnbCtQb0VjdDFWbm9ncHdGc0xj?=
 =?utf-8?B?MS9oMytsdFlZaHlEOUVqRTB2VEVtbUhybElXQWxkOFl5NDNvQUJaKzN0L1Qy?=
 =?utf-8?B?QW9LLzJaVzF4VHM5alVYbFZUb3hCSTN6NldWNVMxMDlKZTZlQ1dzRzlqTnE4?=
 =?utf-8?B?d1oyaHYxamEvVUkxNUtSdHc3ZTVsU1ZBcmp5bXFJMkxWK05hQ2ZrMzUxVUwy?=
 =?utf-8?B?K0JwdWN3TDhrSWc3U0lmdStJS3lZbXlwZ3RiYzcrZHF2cy9tWVI0dXRoeGUy?=
 =?utf-8?B?NG5BZ05JODB4bk4ybkhHdytMaWMvSGVZbEJuUVBHVzlaZitxZ0JlSlFhWTZz?=
 =?utf-8?B?RXFqeHo0QmxTaGVpYVhpS3hoUVFTNFV2MkdTR0kwM2NmVTc1ZWZCN0FzUXlU?=
 =?utf-8?B?L2lWS1FOUFQ3c3RURTVRTnlkODRkNXdpWUQvZCtralZMVUJRMW1BOHZYd2pC?=
 =?utf-8?B?R3dWVFd6aEtCNU40UmlhNWZQK0IxZkI3YXdRbzlpRE1od1V0RE90bkRGMnl6?=
 =?utf-8?B?VEl4VkpaY1NFTzlyWS9jZ0cwYnNIZ251SndLSUIvVUh1eFgyOGJrN0hXdDFx?=
 =?utf-8?B?SVlGNzNjRHcraFpGdW1MWUxReWJFcnZOdU5qQWR5Y2grZ05EUk10ZHdxWjEv?=
 =?utf-8?B?d1hHT0g3R0VqTDdWb1lpeGVHdWRiWXV0OFhtYVhQUzJqVUlBdE9PT0N5Ymhs?=
 =?utf-8?B?TWkvOXhtdXg4WHMyU0xVQ2NjOXVJWU9Dd2ZPc0hZcnZkWEpISVRXZHZ5WVM0?=
 =?utf-8?B?dUxZaENyOWNybEJUUVVEcWl3TmNJZ0xnNDZiRHRnaW1OY3NLSG5VR1BzLysw?=
 =?utf-8?B?VCtvbjVPSTRjbEZkSm8rMFQrZzdrcGd0TlJrMExFUmJ1Tm1PUSttdDkrTDYv?=
 =?utf-8?B?a0tIL2t3V0pMN3IzR21SZ0dQVFMzSTlQOVlQNXl4emJvOGFkTjVnclBDU1hv?=
 =?utf-8?B?OE9rQ0NyZ2hqYm1HbWlHWlhrOEdBNzlpSHRZY0dvbkJKczczdU9kV2Q4cU90?=
 =?utf-8?B?Z2hEZ3BXTEpnV3ZvRVQ3anVKaEdWM3Q1YmZLU0pTUWpwZ21nRkR3YnFMTEsv?=
 =?utf-8?B?aGxhTmpYbGxmT3BJZjBmZHRTN3pnekFaNFU5bStBc2Y0SzFoQmRrVmxDcjJC?=
 =?utf-8?B?RUlVLzE4dTk3ajhvVTFvbU81OVR4RlU1TjFCT1Fqa01tSnpCcTZ6UkY5cjg2?=
 =?utf-8?B?MUM5K0RBOG10Tmh3YXNyOFhBcDd3aXp5NzFLMWxBd2E3VnRucnhNNHg5UkdX?=
 =?utf-8?B?U0h6eldZVDRITUJyRmJJWHFUc1d2ano2ZlUzQWJLWU1zNW5KRUc1WldjSnRv?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e967d3cf-c4c7-447e-88e4-08dc282da6eb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 22:39:32.0379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XEJWMz0d9RsK0B8PTwacZoEXuF97Qaya25ZcrDvNCpZBwvGwZwwiW21vDSNiLiKGqd+yATuhsAaafvekeGIz2OR6Ncj4cL0DkF3NCdg1uJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6381
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707345581; x=1738881581;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MxfMOlWa/W/RQPUd9IK5GjzkS9pg6gSVOKw/miqGT50=;
 b=TYDPFlN2qtMBmGbdZX1x7/AlqA8zLHx5rplN/suSxDycRK2XaobfQLje
 iJXpDSpk4kyyJqZZ4xfve+eYgsPd11LB9ETL/ieKtqOlQch9qxqDobk6m
 DBsdCksolRfN/oe6CVRLtIU7XQcQ2yobt3FDYscX2YVB7YjMlpYz4aOPT
 VXpFyQOBktRcSc/coK9a2C5ks1n+KbUCBe4oFG1K7ujOUl13njhAcLWNi
 QH5XZhLd30f0nAwcKKo8jqN+rHp3InTOozB/2f6DAX6q8sdBbdlECQzD2
 IXOP8ygUpYVUmp8vl6AjIOKKY05R53rS+0uM+bdrn3h/Z5rJ5Dne/OQLx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TYDPFlN2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Add 1000BASE-BX
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/7/2024 2:23 PM, Ernesto Castellotti wrote:
> Dear Tony Nguyen,
> 
> Thanks for your review of my patch, I'm working to improve it.
> 
> On Wed, 2024-02-07 at 13:43 -0800, Tony Nguyen wrote:
>> On 1/27/2024 9:48 AM, Ernesto Castellotti wrote:
>>> Added support for 1000BASE-BX, i.e. Gigabit Ethernet over single strand
>>> of single-mode fiber).
>>> The initialization of a 1000BASE-BX SFP is the same as 1000BASE-SX/LX
>>> with the only difference that the Bit Rate Nominal Value must be
>>> checked to make sure it is a Gigabit Ethernet transceiver, as
>>> described
>>> by the SFF-8472 specification.
>>>
>>
>> Some nits on the patch...
> 
> Could you be more explicit in this comment?

Nothing really meant there, just letting you know the comments following 
were going to be nitpicks/minor issues :)

Thanks,
Tony
