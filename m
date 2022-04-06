Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 304B94F619B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 16:37:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFA8383A47;
	Wed,  6 Apr 2022 14:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ymhwpavfy3_1; Wed,  6 Apr 2022 14:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A25A78346C;
	Wed,  6 Apr 2022 14:37:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66FBB1BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 14:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5034961109
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 14:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1FDdu3LpfPyf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 14:37:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CD0361110
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649255829; x=1680791829;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wk8slt8U0odDOX71k6kGpSkH1JpcCksrAdHgLxc6oBg=;
 b=fhDrp1Ii1GY8hziByZJkFG2DmTMx+5poTkhz5FT77FuvftECwpgq5VUh
 BydX3RZO6E5QY7H1zBTr3Pp+eTHxKc2e731sNUMIOIui54la2VOPs/Ea9
 A/KdKg6qi8lCenAAPkNmLqTD7zCUI5L79WDGiJ1BHxapl+zwSZ292ZHIN
 y/xfLmFQWJRRdCmhoUf5QbaHH24HO1N69FLx2EoWxQVVkbaihffEib4H4
 BUBJSyazZ48/akxQPHq4TDDJgwjOaflLOf69cW85B/rHf5UP5FxGAI+eJ
 Ovprl2Zq7PBYe5ehU+A9ssovPHGYjHVbm8Gp/Us2SChQc67GauSfreVob Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="324234179"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="324234179"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 07:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="570562828"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 06 Apr 2022 07:33:44 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 07:33:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Apr 2022 07:33:44 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Apr 2022 07:33:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=efvXrahs4hOPFUiFipV4gx3c8zmUvVyDToRDZVPTTQ6IrTJ1k3g8uEDisDXX/7AkyAWqXFWJejpb5je0hSxAuZ2eT6fiEng1NGC4kTGpg9QmeWCzclep1vvXgaHiEKiYCjeNcYBR/GUz4yHFiFW9HWjZyUi6TAd1shK+jsBCOE/rRpS30LB8s15vUrCVqLOAkfxNNIazi7g1XvGKuYVM+UcMJTyQr1A2DL4872lbh6KPKbnrNY//txyDnGUGqGYctQCCFofgRCszugj3GkqdsYXCSEnkfSOZZJbpQowDdQoZ26DpEtUXpGr8+RXCnk4lHHgunVk3toKpDAi5Sjb8pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gfFYaXuErVfwCNzWbFolYLgZ5lacG+WoE6wU+Txq8so=;
 b=oFhj0dX09EG2At9vORQuCoz6WxMGJS26PN7kbS1eDVtiQhRGnzFldiNeRhTZnXg3225f2AzovvuVanPIWddnCm548JZTkxQ6yIYsQ48e8l1eKyMFckR7O35SqfGq7ttya+jFIRzKhGwgb3FfTaq6CXLEBQ25ACxk5b3c5hpDOpf0hAq/YWWaA/nw99mXTv0dQqNHTOsetOMWqKxY+GSeRu9ZKMIuBU6mgHWqfh2FcPEOLj0vqJjqpf38U2WfSlmHSFxiQSbpZ5gqYWow2hcpPBXk2Gr0g4qPERVbCEGdkrNJJ1/15ghzCXx0h5HNZoLBcrbG+zpyMa3rYOyo1KSfpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by BY5PR11MB4433.namprd11.prod.outlook.com (2603:10b6:a03:1cb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.21; Wed, 6 Apr
 2022 14:33:42 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::463:fe6b:da1c:3594]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::463:fe6b:da1c:3594%5]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 14:33:42 +0000
Message-ID: <46988714-070b-fca0-efe8-52004649976a@intel.com>
Date: Wed, 6 Apr 2022 17:33:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220405155601.1443799-1-sasha.neftin@intel.com>
 <f0402937-8594-6ecb-c4f9-c6605dd73d77@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <f0402937-8594-6ecb-c4f9-c6605dd73d77@molgen.mpg.de>
X-ClientProxiedBy: MW4PR03CA0119.namprd03.prod.outlook.com
 (2603:10b6:303:b7::34) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e1a0a03-10ba-4246-3fcb-08da17da72a4
X-MS-TrafficTypeDiagnostic: BY5PR11MB4433:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB4433A8E561EE00A189ADE6A797E79@BY5PR11MB4433.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YQLOVfV/ZKJxRXYTS8dUhII0GU/V5jIPqeHToyds+pfecRAeRXebF/cG48eefdyZOVZcAyKYuKsCI9bbYpDoc+hbBoRcbso75Yvs0mpJQloEJ81hSKczDCEe2Oqbi+fjZzir9syyGlIVZY+kRIfsXDy5dDH5YVWDkn25c9Qw5AM5xkvKLuwd12htP6UYVDjqKogAti2fVkn81lhEOsR2aS9fjkPR4qSZYgpgC4pfzDAqUdPAWQ0ui4JEFIHBxUXX9xuOHutLiXpva+Q0tgugHAB0AFPzD78sjK1uQHEpaD9jTf+BI9FC/hB75e0H7ea5DgEV6aUKlKdvo9cWirRjAj8PrIZQleuuglthxurT0QiWZ2PWuzW2KUG2zpnkj/L181t+W1v7ds0ke10BeknX4DP/k98evsJrZixMN08bPO6tc5oVRZkqDmbIYAXUedZ+cKKGIafbD4ZoGTmvFA2lDylvza0X/EP66dTgl75FJVrE7Vjt4DtnY3ofUBfSIcJxm+I00/wMvgKxMjcjFIkTU5r4Oz2KcEQaAAHbH0LoyHcehcMcMkxtJgCpHdnD6ONOfa3H331cUQnRMhajNgwUWRw3hikOuusqRZGr87w5u9uvEfEoWNvLqpsDhjKPMCLooxH47rnlRavrop2gpVFlnW32MAlujeADSotouw72S3EDTXXXXa65mLfhXSCmoRYang+TSXm+/1srddkMaLUuNzT4wxvlAmfQx9QvqCRcOkCngGn7LcScKyeu19dRkTWLzchp0foLXpX8dLxsS3Ad3TssbCjMeLC/u0maxC7FG3LekKwuEleayh9Zia0XFI3cLNfUg4mX36gLeF0CH4J/OQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(508600001)(6506007)(2906002)(6512007)(86362001)(31696002)(6486002)(966005)(6666004)(8936002)(5660300002)(186003)(26005)(2616005)(83380400001)(107886003)(38100700002)(82960400001)(66946007)(31686004)(66476007)(66556008)(6916009)(36756003)(8676002)(54906003)(4326008)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmhFKzBZaEVNekUrZ01EUzRhWlFsbytaZEJkNXgzdGRkaHdaZW1hcm4wRllO?=
 =?utf-8?B?bnNmY0FqYno3NFBtVFRTbGVnbHNmMlBOMEx2L3JPaHFyV1pPQjF2U3BEeG1r?=
 =?utf-8?B?cUw1TXcwcHBIZEFJeUJ3MENRdG5WczI2ZGp6MW53YnlsbS85S1hxNHNTcHlZ?=
 =?utf-8?B?N1B4UnVJczBCWFdEY0VJaGh5UDhiNCt2YjZGTEtINUlXRFkyWkp4UjBrL1hs?=
 =?utf-8?B?cElmMzNISzc2UkxXN0VDVmE1RTRnSFl4VFpkNkVRN3ZHL0dlNmgxbXJUYzNN?=
 =?utf-8?B?aFVNTHJJWXFwZ3RLRUJTS01xZ0cyVzZBemlROUpCVGpLcTEzZDVyakZFZnFw?=
 =?utf-8?B?RlVhdDhoREsrRTRMdWh2VGNOT3B2WEsxNmNzeWNpdk90NUFRQmpkMDdYbTVY?=
 =?utf-8?B?eXQramtzeW9IYUpJdG5tQmhFUU5HSFI2dGRRbjBDT2hJbjVTenZicTBqR1Vh?=
 =?utf-8?B?QlJacGFOUHNYR08yc2VNb0Q3OGZEMW9xNVV6ZFc2SFhRNHhGTWR0ZkVueEZu?=
 =?utf-8?B?QmVSNG53WWFrSDdmZDJITUJuZlAxbDdlcjVuS3cva0RmdUJtTDVFakVzdnRU?=
 =?utf-8?B?d1BzQlFZYkIvZzRrUnFOSUlrc0RhNkZkMHB1cEk3M0RHeEF0ZExiZmF3THVH?=
 =?utf-8?B?dnVyeWE0U2tDMDlPbE5ZQWZTSDFKVEtIN0RBQytYdXpxcVpwbXI5RmUxdEZl?=
 =?utf-8?B?eHV6OEhESzBORzQ0RW9kL2VtYy9OS0FFY2FURVJTZitkWW0xeGFGRnFUNUc0?=
 =?utf-8?B?V1hvWFJhUGlycVRtZ3R4dFloMXVGS0JxSThOK0VCamk1SE94T216K2VqK3hP?=
 =?utf-8?B?azZoQ3lyenlOd0xOMHJsZVNUUEkyVVRKOWprN1U2dG9pZ09adkdXd24yb3lY?=
 =?utf-8?B?bVd3RVFhNGNRcE50bFFsY2tIWFBacHVkUWhwNGhjcWJYSFRXenJoY0JaU3Jm?=
 =?utf-8?B?R3dPelNZNzlsK3I3emNINVRjdDE4YWtpOHJGN1RJYm9DM2tKaktzMmc4TjdM?=
 =?utf-8?B?R01UdG5mbEI4Q245QkM3SEM0Q3UxMlg0U0k5d2pRZzQvMVZodVhrSDhmaHRK?=
 =?utf-8?B?ZDZyRExlcXg1WDYvTzJYeHZPK054dkhHdDVETnUzSHF0a1Z0ZkV3T0pYRFNQ?=
 =?utf-8?B?Nzg1K0ExUER3a2J2Q0FteFVnNm4vakpnZkp2ckxydGJybmZ0N2E3azNEZGVl?=
 =?utf-8?B?RFRwL3lFWGJCZDdCaUtVS2g2RFkxcFJYSXFzRTlyNDlMZDlYYjVDdm05RzdR?=
 =?utf-8?B?ZTBuY2Q5dnVhd0EwaHZWSzlGTEFZK2IzY0J4TWNzeGhLTFRkQk10Q2xlY3F0?=
 =?utf-8?B?NGVXRFMzZVFJTlQvK2REK0g2TUdrQkpXRFpuU25qSWxyQmtCOXY2dkFtaTIv?=
 =?utf-8?B?UUtqRXNVVHRLQW9vNEZxcGYwd25VN1UzMUdhS2Y3UGlKeUxkMlhrNjRLVk9y?=
 =?utf-8?B?K0xRRlNPTmJBU3FlWkdORm9oZS8xYzdONWUxUys4MHJyL1ZvcWpOZ2lxZ0hD?=
 =?utf-8?B?NEdCOHM4blNyUjNkb0hYMDZPMGROUDBGZ2JjV2VVeXBJWU9EMlNSS0k3M3hw?=
 =?utf-8?B?VEtTcTdYSVMyVnRqWjJUUE8wUTkvZUFCdG5zWTU0Nmw0ZHk0RjRWUllMSHdM?=
 =?utf-8?B?SzlmRlprWEpiOXlCbUlsb1k5R09KZE52K0ZDYm82a2M4c09YTHF2U2pOMjFk?=
 =?utf-8?B?WXA2UVQyVU1TUno4bjkrQllkc3dpRzNaaVpQakR2SzBocEt6Z0kvSHAvTlNS?=
 =?utf-8?B?SEgzUS9XckhJUk9jSURjK1ZqRzE4Sk8wRmNldFZacm5pVTltK04vNkRTbGZi?=
 =?utf-8?B?b2Y3MlRaTEpBdkFMeUtBSFNzK010RzhRZWNvU2tIalZ5T3NwUHlRUFF0Y0NN?=
 =?utf-8?B?Y0phK3dzSWR2WENxYzRBQUNXdU11ZVRTUWdXUWxUb2hLQ0FBS1RFQXRJYU9S?=
 =?utf-8?B?Z2d3dFE5WkhOb0V1ZUprVkxYSUNpbEtJTE9VY2ZFWlZodmxDUjM0YTEwdDZz?=
 =?utf-8?B?M1lkTFlsUlFpYy9VazVoakZ0YWo3eE1pbHVhZm1tb3dXZDl2SkFONXAvVDBJ?=
 =?utf-8?B?bzB4UGtwYlpubm5YKzFrTFh2NmF3SS96cWRycXZQNHdSVVJZNGdPeTNac1J2?=
 =?utf-8?B?WmtqdjJUb3puNWUrN3dKQmxVQ3dKRTJleHVwVmc5a0pFVXFJamlSZ2hFYXNl?=
 =?utf-8?B?U2pVZG5NKzdSc3pSa1F6UlhHU0RIaTcxb0QxcUFicGVBR1ZrTkx3SGtmRXBD?=
 =?utf-8?B?bGV0MmxBSktONDZwbVM1Yyt5QnpQd1I0L2QzYUppN0dDbW1UQUVSU2xDd01W?=
 =?utf-8?B?eVFVUFZrQ2lpdldmRHF2SmErc2RyL2dIOGd1bmNJd1BWeURLRjlmWkdWWkp1?=
 =?utf-8?Q?E65zIoF5OgEUlHnk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e1a0a03-10ba-4246-3fcb-08da17da72a4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2022 14:33:42.1937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: //6XVAFzhdMopRibyZ0U7Q2tjwGgWfuDswkVMUHx4FJ7AtOYweis+YZjdogD9ZnPBxZi8cv6StoY+/TRR91RYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4433
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: James Hutchinson <jahutchinson99@googlemail.com>,
 intel-wired-lan@lists.osuosl.org, Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC82LzIwMjIgMDg6MzQsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgU2FzaGEsCj4gCj4g
Cj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+IEFtIDA1LjA0LjIyIHVtIDE3OjU2IHNj
aHJpZWIgU2FzaGEgTmVmdGluOgo+PiBXaGVuIHdlIGRlY29kZSB0aGUgbGF0ZW5jeSBhbmQgdGhl
IG1heF9sYXRlbmN5IHUxNiB2YWx1ZSBkb2VzIG5vdCBmaWxsCj4+IHRoZSByZXF1aXJlZCBzaXpl
Cj4gCj4gRG8geW91IG1lYW4g4oCcZml0IGludG/igJ0gb3Ig4oCcaXMgdG9vIHNtYWxsIGZvciB0
aGUgcmVxdWlyZWQgc2l6ZeKAnT8KPiAKPj4gYW5kIGNvdWxkIGxlYWQgdG8gdGhlIHdyb25nIExU
UiByZXByZXNlbnRhdGlvbi4KPiAKPiBNYXliZSBnaXZlIGFuIGV4YW1wbGUgb2YgdmFsdWVzIGxl
YWRpbmcgdG8gaW5jb3JyZWN0IGJlaGF2aW9yPwo+IAo+PiBSZXBsYWNlIHRoZSB1MTYgdHlwZSB3
aXRoIHRoZSB1MzIgdHlwZSBhbmQgYWxsb3cgY29ycmVjdGVkIExUUgo+PiByZXByZXNlbnRhdGlv
bi4KPiAKPiBNYXliZTogSW5jcmVhc2UgdGhlIHZhcmlhYmxlIHNpemUgZnJvbSB1MTYgdG8gdTMy
LCBzbyB0aGUgZGVjb2RlZCAKPiBsYXRlbmN5IGNhbiBiZSByZXByZXNlbnRlZC4gV2h5IGFyZSAz
MiBiaXQgZW5vdWdoPyBXaHkgbm90IDY0IGJpdD8KSGVsbG8gUGF1bCwKU2NhbGluZyByZXByZXNl
bnRlZCBhczoKc2NhbGUgMCAtIDEgICAgICAgICAoMl4oNSowKSkgPSAyXjAKc2NhbGUgMSAtIDMy
ICAgICAgICAoMl4oNSAqMSkpPSAyXjUKc2NhbGUgMiAtIDEwMjQgICAgICAoMl4oNSAqMikpID0y
XjEwCnNjYWxlIDMgLSAzMjc2OCAgICAgKDJeKDUgKjMpKSA9Ml4xNQpzY2FsZSA0IOKAkyAxMDQ4
NTc2ICAgKDJeKDUgKjQpKSA9IDJeMjAKc2NhbGUgNSDigJMgMzM1NTQ0MzIgICgyXig1ICo0KSkg
PSAyXjI1CnNjYWxlIDQgYW5kIHNjYWxlIDUgcmVxdWlyZWQgMjAgYW5kIDI1IGJpdHMgcmVzcGVj
dGl2ZWx5LgpzY2FsZSA2IHJlc2VydmVkLgo+IAo+IFBsZWFzZSB1c2UgNzUgY2hhcmFjdGVycyBw
ZXIgbGluZS4KPiAKPj4gRml4ZXM6IDQ0YTEzYTVkOTljNyAoImUxMDAwZTogRml4IHRoZSBtYXgg
c25vb3Avbm8tc25vb3AgbGF0ZW5jeSBmb3IgCj4+IDEwTSIpCj4+IFJlcG9ydGVkLWJ5OiBKYW1l
cyBIdXRjaGluc29uIDxqYWh1dGNoaW5zb245OUBnb29nbGVtYWlsLmNvbT4KPj4gTGluazogaHR0
cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTU2ODkKPj4gU3VnZ2Vz
dGVkLWJ5OiBEaW1hIFJ1aW5za2l5IDxkaW1hLnJ1aW5za2l5QGludGVsLmNvbT4KPj4gU2lnbmVk
LW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+IAo+IEFkZAo+
IAo+IFRlc3RlZC1ieTogSmFtZXMgSHV0Y2hpbnNvbiA8amFodXRjaGluc29uOTlAZ29vZ2xlbWFp
bC5jb20+IChJMjE5LVYgKHJldiAKPiAzMCkpCkkgd2lsbCBsZXQgSmFtZXMgYWRkIHRoaXMgdGFn
Lgo+IAo+PiAtLS0KPj4gdjI6IGFkZGVkIGxpbmsgdGFnCj4+Cj4+IMKgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgfCA0ICsrLS0KPj4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgCj4+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+PiBpbmRleCBkNjBlMjAxNmQwM2Mu
LmU2YzhlNmQ1MjM0ZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2ljaDhsYW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvaWNoOGxhbi5jCj4+IEBAIC0xMDA5LDggKzEwMDksOCBAQCBzdGF0aWMgczMyIGUxMDAwX3Bs
YXRmb3JtX3BtX3BjaF9scHQoc3RydWN0IAo+PiBlMTAwMF9odyAqaHcsIGJvb2wgbGluaykKPj4g
wqAgewo+PiDCoMKgwqDCoMKgIHUzMiByZWcgPSBsaW5rIDw8IChFMTAwMF9MVFJWX1JFUV9TSElG
VCArIAo+PiBFMTAwMF9MVFJWX05PU05PT1BfU0hJRlQpIHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGxpbmsgPDwgRTEwMDBfTFRSVl9SRVFfU0hJRlQgfCBFMTAwMF9MVFJWX1NFTkQ7Cj4+IC3CoMKg
wqAgdTE2IG1heF9sdHJfZW5jX2QgPSAwO8KgwqDCoCAvKiBtYXhpbXVtIExUUiBkZWNvZGVkIGJ5
IHBsYXRmb3JtICovCj4+IC3CoMKgwqAgdTE2IGxhdF9lbmNfZCA9IDA7wqDCoMKgIC8qIGxhdGVu
Y3kgZGVjb2RlZCAqLwo+PiArwqDCoMKgIHUzMiBtYXhfbHRyX2VuY19kID0gMDvCoMKgwqAgLyog
bWF4aW11bSBMVFIgZGVjb2RlZCBieSBwbGF0Zm9ybSAqLwo+PiArwqDCoMKgIHUzMiBsYXRfZW5j
X2QgPSAwO8KgwqDCoCAvKiBsYXRlbmN5IGRlY29kZWQgKi8KPj4gwqDCoMKgwqDCoCB1MTYgbGF0
X2VuYyA9IDA7wqDCoMKgIC8qIGxhdGVuY3kgZW5jb2RlZCAqLwo+PiDCoMKgwqDCoMKgIGlmIChs
aW5rKSB7Cj4gCj4gVGhlIGRpZmYgbG9va3MgZ29vZC4KVGhhbmtzCj4gCj4gCj4gS2luZCByZWdh
cmRzLAo+IAo+IFBhdWwKU2FzaGEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
