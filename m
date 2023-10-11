Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5127C4E8C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 11:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F33CD415D1;
	Wed, 11 Oct 2023 09:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F33CD415D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697016382;
	bh=WEvamXMiPRQ3Cjzib1LPS/C/HxgfC0YEAgOP4TqZSys=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VXeOyykHbhpgm86TY4aG6SwtTHwjvvd68rXkuR+yn3Bn6PEMewHqmLA0OVOE3S70H
	 9TYcOiL86CFD01YVaDD15yMThPLkZKifzqkdF69hQxdKe7Tk077mtl1iz7SjfAK82E
	 F0omCpJqDkW+o5HNq97HTUu8U5wFzJYIsXrNspm4eBr16/I8lLRWpGxClPuXKJd4JD
	 HOHtpFEkYwUUo4F1Pm+zO8haY5iVRVETHDmkIiIXNRi9VgPZp737eOQtXusbYAfGAJ
	 jS4LHPwEZ+jijL1czRcj7GeA/VD1rSFqdvK6Z1Rlfo9eDzy2Xdql1+ca7FoO/d/4Ha
	 fdMeEvKuMPCRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mt7_tSXx_lSM; Wed, 11 Oct 2023 09:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79C7C40BFB;
	Wed, 11 Oct 2023 09:26:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79C7C40BFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86F6C1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CAB2415D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CAB2415D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDzIGvA7PPpS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 09:26:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED0A240BFB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 09:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED0A240BFB
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387463009"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387463009"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="730429173"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="730429173"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:26:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:26:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:26:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:26:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:26:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZxcmdtwFcYawHs2oTgXi+0UM/pibXovFBlLJeRbb1+EJn9EZTA+2iydWWwQ9J7muAA9IOQOd5ZEvm+FUg5Klc8d1bjth4UHzI4i5IbOJAH9vXN6X4bv8UpaJypQIafS3ZCQzAWoZyr0OnMyGVstpZtvoZFJ0YY320wzIG94vtWykzENG1q20B8hFaIYtGvdFm5FSqDYBNdrmuQvJilelwfwdu4SmFKEG29LndHF1qEUiqI3YWA8VrtKXIhFHcwVMGWt61NYHVu/79w/UcNMaiRm09nPFmesXjKGcH98CeRMUymXdM/dhYR9laLsGedWWgNwyJ1Qsmfl7PYBUPotDRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YYVUjEO+/VCiWcTDHcC/coibXSyNiasJymxlYKL28rU=;
 b=JOeZ8McwckkZVYwxc4sF8JSIvXh5OQM6AdYwbiCKbJrbvdtop2vjqqDHGJzfyTeO/qp8rDpsEPW97FZrvdFdL8xbgKwCRIdM/fSeEzBkV/SccLFrmNsHS+Ym7Ks7vAwZFW1BGNHhH8tsMJpHY6v94PQ95cpHVSbypG+nkFaHK0sOrOq5aLHlmAuJxMjQO2bkv0O3uzsRtLF1w8aQQ4PFuxkXBSuuHpX9Yj3A24V6yymH21rlup/Uy493JFDbeM6ZwN7EIvSU5i4NQ7kAkX7oSYWfqOieeOj14Jy7NldPD1W6AGZsLMK9D3nPGU3JFCSMZB2yfRzcLMeSTJbRwAeoSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.42; Wed, 11 Oct
 2023 09:26:09 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%6]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 09:26:09 +0000
Message-ID: <68683434-4241-4726-9028-96368815b7dc@intel.com>
Date: Wed, 11 Oct 2023 11:24:56 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20231011091342.251204-1-aleksandr.loktionov@intel.com>
 <4ab9d2c8-05bc-40f2-90d5-303aacdca5e2@intel.com>
In-Reply-To: <4ab9d2c8-05bc-40f2-90d5-303aacdca5e2@intel.com>
X-ClientProxiedBy: FR2P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::9) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|IA0PR11MB7257:EE_
X-MS-Office365-Filtering-Correlation-Id: cdce3b8e-8a48-4b9c-9325-08dbca3c1a53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DGgU3vl38gH9hp4GzGCC77gNW0PJJEIDg+njIStvlZli2e5uLKfTog//gfhgYgKp+GIiTTg2C7Boa8hUZ2VmXCaqHRPaQMQwst7OM3Jayv2py09IV8iiIPyuM3j6n2SohQbias9YtoOIdRF65kdxR+gqKn8NTJDBkZtYlTWSY4lkqGrTiS2DDCw/HK4Hn0HQiYx0H94+frCWiVqgzyPeQSBaRbTFIRMe2GqdxPOb5aaGJzlWJRBJM1fj1voNOaU5xLd2XJ620f8E7I3QkuTKRuYrBWfYwGq5Mem7QFnLo3u0OYMJcwJZHRd16qWuqCeJstuKoSOd0TN2+Epkub1s777hfr4/mMeC8UtAfa8ZajT9HAkoGZH45M5vKTUHnkmHBYVIklnZNRiYRwae7BZu1/wKVfDYuLUkX7RUp8gbULbuX+BNe13psSjdZtz8t16oPp3ecrTzUkqiH88Wfh7tuSavuiOpmvkcOAnmltqj2vWhYyrbG7GtAi7L0d5GYy/WQy/1zpTHMRdtujevyf32awnWXc2/CQydElO5fLhEDrCB7WawLtn/DBxmqa2MuVpxjH0543fZKYsJ5SLBR5uprZa35Z8x6nDHsDkQxY5S43DbWDjgtf69Z5NissoDmE5tHwkNniDYc8YgEFTzlmYGtg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(396003)(39860400002)(346002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(38100700002)(6486002)(6862004)(4326008)(2906002)(478600001)(86362001)(31696002)(82960400001)(6666004)(6512007)(6506007)(66476007)(316002)(37006003)(6636002)(66556008)(66946007)(5660300002)(31686004)(8676002)(41300700001)(8936002)(26005)(107886003)(2616005)(36756003)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkIvR3AxdCtGVy9oRXVyTnBPVUJNeGRjc3FmakwvcncvdlZEWUhsTDBjRFJV?=
 =?utf-8?B?Uys4TkZnOXN5UlFGU1loNUsrbHFONDc3a29Ec1R6RXJkRGVualEwNlJrNUFY?=
 =?utf-8?B?WThqVFhkanJ6eXJqR0taYmNlZFpXSFV1UXRyWWhTZVd1bS9YMG5XR2c0MXBY?=
 =?utf-8?B?OEtUS0ZSVVoxdWdGcGxYZEpwWVdBbi8zSFZjK0hOa3dpRUVWOWx3R3ZqZm5U?=
 =?utf-8?B?VXcwbnMwc2VhL3lFOUk1UWNBSVhBT29xbkJ4MjZNdERGQXJaMjVXd2h3ZXBD?=
 =?utf-8?B?QTgzQytZSVd2STlNeXJTY01wUnMzem5EODFiVkEzbjc0MTFDeWp6RTQxZmhR?=
 =?utf-8?B?dTZMZ2tsem40amdNUjFFejBGM0x1ZnYxdjhrTUkrQkxjbzdMYlg5QlRMTFNn?=
 =?utf-8?B?MTFEOGR6Nzl3Y0VoOFowWkVLM21OQ1ZLSDhDdU1uRGxncCs1VDJsMll0dHc0?=
 =?utf-8?B?M25NaytiSHhsdzhNcDZrZ1lVRkVUZTJLOWU4cGNKVUV2TXpvWmZSNVJaUFFs?=
 =?utf-8?B?QkJRakhGZ0ZhRW00N3dndE9FYVZFRmdCdDRWckF0WjBGWTg5WTZTbjlCUW1T?=
 =?utf-8?B?MlVvRm5Ra2hTaUFDS3lncDZzdjdTaTBOKzYrN0tZUEtycWt6ZWtTSGhIRW1t?=
 =?utf-8?B?VnlFWE0waVhMNG02Q1p5ck1ISEhQbEwwQVBEcU1PbmVIaUVjNGhOMmF4Rm9K?=
 =?utf-8?B?ZlpDdmJDREtsTnJmV2o3RDEySXYyOCtWd0VMZmt3aHZJUkFGMEZhSldZdUcv?=
 =?utf-8?B?M1cvK1ZRYWJjV3RUWUVqVmZFNDJpd3lMRkc3QkFKeEdqWjlBR2R1TE9nK25G?=
 =?utf-8?B?bis3aVJSNFNYak9KYVV3UUJOampiUGpsQ1pWZnFBSEd5eSt6bktLcFJHdGVj?=
 =?utf-8?B?ekhiMjYwMFZDZGpBNmFDemRYQytDQ1pOTFpFN0VTUFNydDMxbUl1MlBhdDlR?=
 =?utf-8?B?NkFxK0VjS0JkclR2Uld5VWRKeUNnbGtjSEN3Q01zbldFajQ1QSsyZktUdHR3?=
 =?utf-8?B?TElRVE9IWm1JU2tkWUtuT3g4WTlrR2tNM2xGdWdVbEswT3VBZHBINGl0UHZQ?=
 =?utf-8?B?VWRpVURvRlU4SERYSjhoREhDZEUvb2xYQURPbHl2cFpiZjBXSnV2UHh6TTBY?=
 =?utf-8?B?MWdzR1JKaURIVmp6THFDTGdGSmNTOU5lUTFDN0VLQnFwaWVSSmFDcUZ1WVBi?=
 =?utf-8?B?VE1rNmM1aHVBV2RGNmdQdWhoWVlrVmhTRUE0OUtTZVUvZWZ5Q0MrRnVaVlBm?=
 =?utf-8?B?cVc4bndiQllsYzJGYVYzUEEwcHJQUEhrVEVrV1VpeHUzM25DVzJGZmNYVG1M?=
 =?utf-8?B?dm1acVpLQkRNTkJqVndsdzR4NlVZSHZseE56STJUMHl5ZE1CT2VkWDdHVjlS?=
 =?utf-8?B?WitBT0l3R3dLcWJ2NlZZMTZSTUdid2poUmZ2K2QzVUZIekM3dm10Vld6aUNT?=
 =?utf-8?B?YUczVWppaDcvaWg2SUUrMFhxdy9nd244UFI1UUVsbWFUYWw1TnNLTWRtSVBz?=
 =?utf-8?B?YUx3RHJNM3BIeXVtTmJnUStTRVNqVGNnOVYyVDdhZ01neHFuR2NzWTNPQzF5?=
 =?utf-8?B?ZlNyTzliV3ZVeTExQ09rRzRkR21ZdHJUNUlPbDBiOU9xb3pLUHR0RXd3eEFM?=
 =?utf-8?B?QkFqdjBTcXV1WmxjNmk5QkJZZWVKMVkzYkhzTnhDTGdiVjNCMzJxWjhpdHFB?=
 =?utf-8?B?MFJzWmZqbEc5c2g1TVU3TjMwVjQ2NTY1eUpzMlhleUR2TFlUR3lTUTJ2ZkpV?=
 =?utf-8?B?a0NTRFRKN25NZ2gxMDZkK0dFWFczdDhkWWhxTHhha0NWc1pTUEhFcExWTlN5?=
 =?utf-8?B?dVBMRHltdGJublo4ZVltTk1EVWxET1JKbGlDcER0emlycjh4VTNZRGhSUUNR?=
 =?utf-8?B?QWFlaW5IRHNzSHl1cjdwQktEa2VZYk5XTzdIdTRabTlSNFNIUDFlVXcyT0Z4?=
 =?utf-8?B?TGE4ZCtuWkJIa1h4bHozZXpjSk5BbmxTaG55cWtPL2xrUXEvY0ZiS0xJdU1U?=
 =?utf-8?B?aUZWZGNIRHhHdjhiVXlzbmRmcWl3bkd5WkhpQTJlclpLeEJQL3FSbmdPMzJs?=
 =?utf-8?B?TzcvbTZiQjlxSVpFSjZ4cVd5bGF1Skkwb2dPekpFeER5MVp1YnlTQ25sSUc2?=
 =?utf-8?B?TTJ4ck5kQURpdmprd1NnYU9aZlhwc0JIS0RVcVJVQW9Oa1NSdU9ick5KQUxz?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdce3b8e-8a48-4b9c-9325-08dbca3c1a53
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:26:09.3849 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9iDxV3Pu/tyFc/eCjIIJoyM1plfu6CYE5qYBnVvwp+8c1h8HSwR02u82+wzecJvaZFCEpsCbqFTfnBm9LEPKlvrxtsZaTTD4Wbv3gp6L75c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697016374; x=1728552374;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n5DrS7+wR4qeD0fcJ5uavhQ6xmUaNwwCAJtucMVPwbc=;
 b=bIbYsnzyr0TCDncQ/tEiozXd4ITcpOVBdbCW6MUbuU8JdUaIyFeSDHO6
 V13qLVwCZMknhy8rv4+AYiCOKzEgUvwUOB71UOBBEY155guYbjWhu459H
 H93e0kMJHeTZ4LJSx+Aqh2oEAFsVhDWss2BYCfv4wsxA+YW9RnBQGE90A
 BVn5uL0eQ5IUN5yUmQB9gRdoKRe/d9YetvASJ2jB6zBZyYUpCAcWkKzMj
 RnHv12uW/qw0zg44PsXLajeHfG78MfGRgHWbkqDJZg+gNTyCFXpT/eVUT
 v4r6t949A+7+kPyrkFhoiviekJeXD7dofnv5xH4HhrsCXr//IBp+hhGZB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bIbYsnzy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, Jedrzej
 Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 11 Oct 2023 11:22:21 +0200

> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Date: Wed, 11 Oct 2023 11:13:42 +0200
> 
> Please add netdev and linux-kernel MLs to CCs when sending the next version.
> 
>> In order to avoid no link after plugging a different type PHY module.
> 
> The sentence is incomplete, it tells "why", but no "what".
> 
>>
>> Add reset link speed settings to the default values for PHY module,
>> if different PHY module is inserted and currently defined user-specified
>> speed is not compatible with this module.
>>
>> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> 
> How did Radoslaw participate?
> If he's the author, he must be in the "From" field as well. If not, his
> SoB tells me nothing. Author, co-developer, reviewer, ...?

Also, his email address bounces, IOW there's no point in adding this
SoB. If you want to credit his work, use his working email, either
private or dunno, otherwise makes no sense.

> 
>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
