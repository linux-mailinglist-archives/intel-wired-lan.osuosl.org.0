Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 650C5724439
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 15:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF7D8611E7;
	Tue,  6 Jun 2023 13:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF7D8611E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686057656;
	bh=fZwAZWDGSv8jplNC4oPRHge59xiOY5LdKN3zmhyT1xY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s9lPonmP3osjJ8m4OQwEVh/lBrJHeDZOumufyKxVC/atyDphBdcXDD8UDYJ+6Q6/V
	 Q2gF3YQtUzH8qXuOkGSF1+2qANOanQ68LcnCCtv9UJpqWZrqqAFWNWMYCT5vJL6Oio
	 0ZZmw0CKEFa6oklVMlCk026DJizyklJR9mFXTk/IJOzZNLvUDZQWYq9PbxJh0QcBuk
	 Kz5kK5xfzNrq23zcQnIz6dshNLj7ARXMgdQ5PPmG1d0A88Cne3eEeaYDU2XonBQFSx
	 6Tfqd2kGwiXVz8gD1acl5/pc2yaWWTYkhYr+dJuyiKArTHP1aFnh8YFm9C/W1DE+3v
	 nNBVYikyp/v8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPoKsOKPPJFK; Tue,  6 Jun 2023 13:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2910A61091;
	Tue,  6 Jun 2023 13:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2910A61091
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9C21BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 13:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32FCB416DC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 13:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32FCB416DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swP_gZzuWXnE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 13:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D126416CC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D126416CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 13:20:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="422495277"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="422495277"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 06:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="798843620"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="798843620"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jun 2023 06:15:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 06:15:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 06:15:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 06:15:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 06:15:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5iK/bKb6+NXam6sTKt+2dlE7NMBAeUoKKs+RlSpTcy48GYW+Q+SBlui6zU7CmO/q+e/V8jbjISx3YfbySGtduAV/vVB70pVAZpTiHbc/P+Lw5uSvDQ3zjoqKBN2jduealaSGLwU0aq8FouhCgJcfNnGTdbXAFlIH5i2Hik0J9fG2P+uxItBy7cpn7IRzA4I98Zjz5PZN/0wP/4CAjv/yK7zUCAUvwheEajWPzl+tc3TXMyNbgMMqxJrfSkN0yxTXQXcb5pb2c9PuxC+Vb6kY5Wu/aPhxFnwF6pGmKoMhAEtw4Y2Rxt8DAFbnuOaqayYW/K05m74D3q/tyvKKlFB0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8gso4AurVdREySNFKTMcwviiJlcNtlWHn1XlrP9kKf4=;
 b=YFprucg6iQB8lII9E1YC22fXl9Q6OcpykdHqbKT8wljnepjz5Eu4Ctj52nNBygPt+I8UzPn6X3+iu7S+L0exZiWNUfGSvl4r6E6LW05+AU4M1DyTHwN0z/MZCV6StW4pUzNZljmbt4F3FdHsKJ1ESg7gpIMhAX5tQP68zfu20prwvJjbTFcFC29Mpn3bYURoCbFmkdYKPyFRVo43zB4+Lr4KWN5OdPP5fCAvDyhe2qN8E/1r8fdBfd++mn4t6stECUQLt1hf3tsYL21vPTdcW2Eni+anshmwjZ8mjiNDYeyBOjzsAx5yp67TOeRVCSDtnmnfAXZudW81r3Mii561BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM4PR11MB5342.namprd11.prod.outlook.com (2603:10b6:5:391::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Tue, 6 Jun
 2023 13:15:46 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 13:15:45 +0000
Message-ID: <df0bfcc0-558e-d394-be3e-59264a495e86@intel.com>
Date: Tue, 6 Jun 2023 15:13:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
 <20230530150035.1943669-10-aleksander.lobakin@intel.com>
 <0962a8a8493f0c892775cda8affb93c20f8b78f7.camel@gmail.com>
 <51f558e3-7ccd-45cd-d944-73997765fd12@intel.com>
 <CAKgT0Ue7US2wwZXXU6HcGPBZWg+pSZ=PE_HWxJHgF8bmLymkfg@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0Ue7US2wwZXXU6HcGPBZWg+pSZ=PE_HWxJHgF8bmLymkfg@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0059.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::7) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM4PR11MB5342:EE_
X-MS-Office365-Filtering-Correlation-Id: c99b4853-8e01-4d31-2488-08db669022c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QxC+/l2Wx7p7J5O6AyXC41QZjzpK2AvfnVihFggfvDFS4Fh+/5Y0UsPDgNmg/4mlamr5E4dY9Bi1z18ixrV5cWWn6xmvx4AWGKfrDv+r75/EPzY4m3cmb7tFYh2B/7QZevKmB8Qwv8C/iywE1HvgRffS6cbgXHwvSOCFUSsJZ5MRMtBpyquu7DmQY363ULGAXbAZTdiajHV5QTyqk4I8mRDSp7Kw9HQONJlLH0YPCkwqtfVBkZF11hGa+umQ5Dl5ITV48n+3s5EGYlENP0Q6gVAcfDATDqQ+DGIhpN8BvwxCZIu74+n4AZcxmzFKShbVbD6IAfBB3MmeSd1DzYkCdo1k8IX6mm4ajAjAAqfeCPN24YcLhIzkUp2xHNqFTk6QSvdzIgDZKJQtAHDhzEfh1OyEvkLygghjPqmDCDdqaHTezQFcBsqioilVYm9ipvlVfUD5dLgDARaRNHEjq3qJCnyUCRk1fXQZWM0dQG3uqw9HfsZFWhSKSRipuLOicnAJsUBVm6VqU3pkrYAuVSAZA6lNv67MnUGZLtTqC7pAU+AI+iYk4sZrCw4WHL6xuRpU3TLmuaYuW8fUepWR2HttpL2+HZSs5hIB4BKbf3mv3zE7pVA5SkW+eoK8fAAiqBajj4y824u0pUFEqqEDToDExA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(376002)(396003)(366004)(451199021)(36756003)(478600001)(5660300002)(54906003)(6666004)(8936002)(8676002)(316002)(6916009)(4326008)(66946007)(66556008)(66476007)(41300700001)(38100700002)(2906002)(31686004)(7416002)(82960400001)(26005)(6506007)(6512007)(31696002)(53546011)(86362001)(186003)(2616005)(83380400001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0lua0JmZzc1bnFQbTljRFlvbGVHb2dtRWUzeENJS1Q3VTVpQ1lqbHdCR25T?=
 =?utf-8?B?U2UrcGpiUWk0REVCbitIcnVNcHJodVhoYytMRDB3QzZwVEhTRTZOZTBKVDdX?=
 =?utf-8?B?ZnJ5ek5PQ1UvRGxUMVVYOUZyZDhrYStCK0N0b1NKM3B6a1ViMkszdkMvNkJv?=
 =?utf-8?B?UkxqMkVuOTdLV2lXZVFjd1BMSEg0VzFrQXV0dXNabFhyWkR3MGo5dlp4TVdE?=
 =?utf-8?B?WHp4a0g5QUplZTFLUTE4U0xkb0EvMFFQelBvMUswMVIrdnMyeTZQVkYvNHRM?=
 =?utf-8?B?WE4wNHREVkE2d21wV0ZXYVJyQTY1b1l1cS9qeU1LSlRqam1oYSthdmU0YS9J?=
 =?utf-8?B?V083VENHczVTNDloTmROYUVUZHVMejk5cmd1VmFOZHZkL0N5RmpXbFlKUmhF?=
 =?utf-8?B?VG5uRitJTUl0NjZBZnA3UXR5MHdOQUVwbGZaNmFQOXJRSUg5LzlRcW5kd1Bu?=
 =?utf-8?B?QWZ3NGNtMktUMVBhb1o4b1EzZUtkczZJMVUrcU5QSXVHa2FSb0VDS3pnVDIr?=
 =?utf-8?B?Y1BBWll5SkthVmxzVmk3YlNQemdIMG5aZHdlV2tGdzgxb1lRZVROMXZOZGdX?=
 =?utf-8?B?Wm9VbkRzSG9mQ2dYUFZ4TmtrMnJwTnBRckFuL3JzVjJLTFJGUGthSmdWOHhE?=
 =?utf-8?B?NGFUaW9EeGYraUVEVFZUVmJYQS9NYUVEQWpnam9wamNiSitNcDA4TTZVUE1k?=
 =?utf-8?B?NVRDRW9UNVc2d0RFdFRwelFQTHB0aCtGZFE2d29UOUlWYVV0dnlQaDFxZDYx?=
 =?utf-8?B?VlVmcG00ZVdyb3NYRGpjSC9NSEsyZFhYKzBac1Q4anBMN25NZUV0ZCttZ3Ry?=
 =?utf-8?B?R0pDclVWUExoZlhYYks0Zm5kdm1kYUJPZlpRUmpKaWo3bjA3UkF1ZFpTVWlQ?=
 =?utf-8?B?VjVhQlI3V0drNHBYR3FId3VtSWtEdTZncTZjUTlNQmN5SUFEeTA4Y3dlSnhE?=
 =?utf-8?B?WkMrTTdkdGlnelB4V1J4ck5kcmcyTG5pMURLaTZ2TnNPU2dqVFJZc0NTd2Rk?=
 =?utf-8?B?R0RBRzgxNWVlalN1Q3JNcXZCOU9qSU9RL0t3dFZkWnRqQXpoSTRGeUR3Q01U?=
 =?utf-8?B?c0ZoRFVxall4Qk1lbkRmVVdtUVVaSmN5K0x4b1JibVFDU1U2UG5aSVM5VXdH?=
 =?utf-8?B?bjZKN0p2SE9ybms2M3lYNTh3Ty9nYWZxT2ttV1NJcWtwMFJyMklIQUIrUUxr?=
 =?utf-8?B?K1NvQjFrakxCbGZVeXhpRGV5Z0EzTGFXM2tPMTA1aUtSQ01pTVdCZUpMd1NE?=
 =?utf-8?B?NUJncFNTNHRkOXFGcml4TnI2YU5UM3ZtQmZZZExJTmpNcDBmWndmR1hZZVMy?=
 =?utf-8?B?VGxNMXRxWm94UUVtcW5IaFhualduTlVaQ1d1Unp3Q0RNTHBOWkg4YjdYUnkz?=
 =?utf-8?B?QW9xemdvcCtvcWdJNkl2ckVzTGg2RktZbzBzdVRBbUNRUXplelQvZmlBNit0?=
 =?utf-8?B?WmhaVVNlRGp6VkZ2MGlsdFQ3bVNLSElrTDVVRXgxeFoyYmc5enUrVjVqUnJO?=
 =?utf-8?B?SWhic0JZY1BJY2tlMFdjeDNuaGkzRTkrVjQ0L0NBL1dzaFB3Q1MrNVpIOEph?=
 =?utf-8?B?L0ZTR0VQaFlSN3JycnZZTyt5OW15WDNxQ1YxNUNXZkltWXpuaUZXc2FwSTIz?=
 =?utf-8?B?Qmx0MTZtMlJWUloyd0R5RXA2anZHVTJOUCtHVTZvMkMvTDJydEVxZUx1MzJV?=
 =?utf-8?B?bS8yaFJGYzlqOVBydElXelIvdWdGNzloVnVINVU3Vll5VlBuL2VXUGNGbEMy?=
 =?utf-8?B?RGdoaXZoM3p0d3FUVmlNZU4zZzFnSCtVUytzNmIvWHJvVUJETHRwZzdXdFJL?=
 =?utf-8?B?WUpXdU1VdlV4KzR3em8vcUl2Ujc3bXlkU1NXY0dKZElBWjJ4L0dMZUVLNTdk?=
 =?utf-8?B?cEt2UTJXVHFRaFdvUldQdVkwYlpHWnp1N0U5UVNTeTk1aW5VcHNMMlNOSlYz?=
 =?utf-8?B?d0ZOMlF2QzlueStTZzF6cTB4OUtLalF1RUt2ZVdFK3ZLQy9mdTd1RzczZE5t?=
 =?utf-8?B?NmZhVDRNOWJaS25yWG5hWXIwNFZPbjliTTZzbm9wY1FZQVl6QUY0WFhtZk1l?=
 =?utf-8?B?M2hadnVSSWF4MUx1YllaTkJoVTZhQWhBVkhSSjdueEhJNlN5Y2hhTko5SDkz?=
 =?utf-8?B?WEZoZjYrcHYwVCsvQ0JIUlBxUmJkNXhyQ0lWUUgzNHpNOE91Y0ZJZnBaQitR?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c99b4853-8e01-4d31-2488-08db669022c3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 13:15:45.5798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aYp7ORTLQI1Ufuuu1xNtYqFrn2seCrC8eA5UW5Oindm7VR6h7frGe2zU5uQjZ8k2q8qxfdRPLsylki8+3t7qkLk2cVCudu+GCHNZviA6gVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5342
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686057648; x=1717593648;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PObT+021SCqQmTDTw/JkTLF81cltE8Uwq3zNznT29X0=;
 b=Y2WZ3kObUoNGmwDEaSsf+DQFavOKqIi7OpjZa8mu98bnlSzcJYv0hNEj
 zy95J6bIoaTfGDXOqFnF9u8urP3/ruu7QlVecArxyr1dcTILQMC4VyX7d
 UcOYSuFiTGERbM/BvpQOmIaFioyUgOrXFc7EfzKKLi+GhTZW0gmcctAte
 Et4kTei5yy17wVD90z5tRJQnCCtp/w+g3eWD2nmiOWsDLsqb/T5YqpAUT
 PewOnx0B65H/h9E+Cht1vxutIUo3/A0NpwgeiI5Q8M2VYb82jzrFhDFRA
 gfnnD2NrgtE/t7qtIq4t65UC402o3vgBsGB6iGYNoDwYp9jn80J/CvpjR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y2WZ3kOb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/12] iavf: switch to
 Page Pool
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Larysa
 Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBG
cmksIDIgSnVuIDIwMjMgMTE6MDA6MDcgLTA3MDAKCj4gT24gRnJpLCBKdW4gMiwgMjAyMyBhdCA5
OjMx4oCvQU0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNv
bT4gd3JvdGU6CgpbLi4uXQoKPj4+IE5vdCBhIGZhbiBvZiB0aGlzIHN3aXRjaGluZyBiYWNrIGFu
ZCBmb3J0aCBiZXR3ZWVuIGJlaW5nIGEgcGFnZSBwb29sCj4+PiBwb2ludGVyIGFuZCBhIGRldiBw
b2ludGVyLiBTZWVtcyBwcm9ibGVtYXRpYyBhcyBpdCBpcyBlYXNpbHkKPj4+IG1pc2ludGVycHJl
dGVkLiBJIHdvdWxkIHNheSB0aGF0IGF0IGEgbWluaW11bSBzdGljayB0byBlaXRoZXIgaXQgaXMK
Pj4+IHBhZ2VfcG9vbChSeCkgb3IgZGV2KFR4KSBvbiBhIHJpbmcgdHlwZSBiYXNpcy4KPj4KPj4g
VGhlIHByb2JsZW0gaXMgdGhhdCBwYWdlX3Bvb2wgaGFzIGxpZmV0aW1lIGZyb20gaWZ1cCB0byBp
ZmRvd24sIHdoaWxlCj4+IGl0cyByaW5nIGxpdmVzIGxvbmdlci4gU28gSSBoYWQgdG8gZG8gc29t
ZXRoaW5nIHdpdGggdGhpcywgYnV0IGFsc28gSQo+PiBkaWRuJ3Qgd2FudCB0byBoYXZlIDIgcG9p
bnRlcnMgYXQgdGhlIHNhbWUgdGltZSBzaW5jZSBpdCdzIHJlZHVuZGFudCBhbmQKPj4gKzggYnl0
ZXMgdG8gdGhlIHJpbmcgZm9yIG5vdGhpbmcuCj4gCj4gSXQgbWlnaHQgYmUgYmV0dGVyIHRvIGp1
c3QgZ28gd2l0aCBOVUxMIHJhdGhlciB0aGFuIHBvcHVsYXRpbmcgaXQgdy8KPiB0d28gZGlmZmVy
ZW50IHBvc3NpYmxlIHZhbHVlcy4gVGhlbiBhdCBsZWFzdCB5b3Uga25vdyBpZiBpdCBpcyBhbgo+
IHJ4X3JpbmcgaXQgaXMgYSBwYWdlX3Bvb2wgYW5kIGlmIGl0IGlzIGEgdHhfcmluZyBpdCBpcyBk
ZXYuIFlvdSBjYW4KPiByZXNldCB0byB0aGUgcGFnZSBwb29sIHdoZW4geW91IHJlcG9wdWxhdGUg
dGhlIHJlc3Qgb2YgdGhlIHJpbmcuCgpJSVJDIEkgZGlkIHRoYXQgdG8gaGF2ZSBzdHJ1Y3QgZGV2
aWNlIHBvaW50ZXIgYXQgdGhlIG1vbWVudCBvZiBjcmVhdGluZwpwYWdlX3Bvb2xzLiBCdXQgc291
bmRzIHJlYXNvbmFibGUsIEknbGwgdGFrZSBhIGxvb2suCgo+IAo+Pj4gVGhpcyBzZXR1cCB3b3Jr
cyBmb3IgaWF2ZiwgaG93ZXZlciBmb3IgaTQwZS9pY2UgeW91IG1heSBydW4gaW50byBpc3N1ZXMK
Pj4+IHNpbmNlIHRoZSBzZXR1cF9yeF9kZXNjcmlwdG9ycyBjYWxsIGlzIGFsc28gdXNlZCB0byBz
ZXR1cCB0aGUgZXRodG9vbAo+Pj4gbG9vcGJhY2sgdGVzdCB3L28gYSBuYXBpIHN0cnVjdCBhcyBJ
IHJlY2FsbCBzbyB0aGVyZSBtYXkgbm90IGJlIGEKPj4+IHFfdmVjdG9yLgo+Pgo+PiBJJ2xsIGhh
bmRsZSB0aGF0LiBTb21laG93IDpEIFRoYW5rcyBmb3Igbm90aWNpbmcsIEknbGwgdGFrZSBhIGxv
b2sKPj4gd2hldGhlciBJIHNob3VsZCBkbyBzb21ldGhpbmcgcmlnaHQgbm93IG9yIGl0IGNhbiBi
ZSBkb25lIGxhdGVyIHdoZW4KPj4gc3dpdGNoaW5nIHRoZSBhY3R1YWwgbWVudGlvbmVkIGRyaXZl
cnMuCj4+Cj4+IFsuLi5dCj4+Cj4+Pj4gQEAgLTI0MCw3ICsyMzcsMTAgQEAgc3RydWN0IGlhdmZf
cnhfcXVldWVfc3RhdHMgewo+Pj4+ICBzdHJ1Y3QgaWF2Zl9yaW5nIHsKPj4+PiAgICAgIHN0cnVj
dCBpYXZmX3JpbmcgKm5leHQ7ICAgICAgICAgLyogcG9pbnRlciB0byBuZXh0IHJpbmcgaW4gcV92
ZWN0b3IgKi8KPj4+PiAgICAgIHZvaWQgKmRlc2M7ICAgICAgICAgICAgICAgICAgICAgLyogRGVz
Y3JpcHRvciByaW5nIG1lbW9yeSAqLwo+Pj4+IC0gICAgc3RydWN0IGRldmljZSAqZGV2OyAgICAg
ICAgICAgICAvKiBVc2VkIGZvciBETUEgbWFwcGluZyAqLwo+Pj4+ICsgICAgdW5pb24gewo+Pj4+
ICsgICAgICAgICAgICBzdHJ1Y3QgcGFnZV9wb29sICpwb29sOyAvKiBVc2VkIGZvciBSeCBwYWdl
IG1hbmFnZW1lbnQgKi8KPj4+PiArICAgICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2OyAgICAg
LyogVXNlZCBmb3IgRE1BIG1hcHBpbmcgb24gVHggKi8KPj4+PiArICAgIH07Cj4+Pj4gICAgICBz
dHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2OyAgICAgIC8qIG5ldGRldiByaW5nIG1hcHMgdG8gKi8K
Pj4+PiAgICAgIHVuaW9uIHsKPj4+PiAgICAgICAgICAgICAgc3RydWN0IGlhdmZfdHhfYnVmZmVy
ICp0eF9iaTsKPj4+Cj4+PiBXb3VsZCBpdCBtYWtlIG1vcmUgc2Vuc2UgdG8gaGF2ZSB0aGUgcGFn
ZSBwb29sIGluIHRoZSBxX3ZlY3RvciByYXRoZXIKPj4+IHRoYW4gdGhlIHJpbmc/IEVzc2VudGlh
bGx5IHRoZSBwYWdlIHBvb2wgaXMgYXNzb2NpYXRlZCBwZXIgbmFwaQo+Pj4gaW5zdGFuY2Ugc28g
aXQgc2VlbXMgbGlrZSBpdCB3b3VsZCBtYWtlIG1vcmUgc2Vuc2UgdG8gc3RvcmUgaXQgd2l0aCB0
aGUKPj4+IG5hcGkgc3RydWN0IHJhdGhlciB0aGFuIHBvdGVudGlhbGx5IGhhdmUgbXVsdGlwbGUg
aW5zdGFuY2VzIHBlciBuYXBpLgo+Pgo+PiBBcyBwZXIgUGFnZSBQb29sIGRlc2lnbiwgeW91IHNo
b3VsZCBoYXZlIGl0IHBlciByaW5nLiBQbHVzIHlvdSBoYXZlCj4+IHJ4cV9pbmZvIChYRFAtcmVs
YXRlZCBzdHJ1Y3R1cmUpLCB3aGljaCBpcyBhbHNvIHBlci1yaW5nIGFuZAo+PiBwYXJ0aWNpcGF0
ZXMgaW4gcmVjeWNsaW5nIGluIHNvbWUgY2FzZXMuIFNvIEkgd291bGRuJ3QgY29tcGxpY2F0ZS4K
Pj4gSSB3ZW50IGRvd24gdGhlIGNoYWluIGFuZCBoYXZlbid0IGZvdW5kIGFueSBwbGFjZSB3aGVy
ZSBoYXZpbmcgbW9yZSB0aGFuCj4+IDEgUFAgcGVyIE5BUEkgd291bGQgYnJlYWsgYW55dGhpbmcu
IElmIEkgZ290IGl0IGNvcnJlY3RseSwgSmFrdWIncwo+PiBvcHRpbWl6YXRpb24gZGlzY291cmFn
ZXMgaGF2aW5nIDEgUFAgcGVyIHNldmVyYWwgTkFQSXMgKG9yIHNjaGVkdWxpbmcKPj4gb25lIE5B
UEkgb24gZGlmZmVyZW50IENQVXMpLCBidXQgbm90IHRoZSBvdGhlciB3YXkgYXJvdW5kLiBUaGUg
Z29hbCB3YXMKPj4gdG8gZXhjbHVkZSBjb25jdXJyZW50IGFjY2VzcyB0byBvbmUgUFAgZnJvbSBk
aWZmZXJlbnQgdGhyZWFkcywgYW5kIGhlcmUKPj4gaXQncyBpbXBvc3NpYmxlLgo+IAo+IFRoZSB4
ZHBfcnhxIGNhbiBiZSBtYXBwZWQgbWFueToxIHRvIHRoZSBwYWdlIHBvb2wgaWYgSSBhbSBub3Qg
bWlzdGFrZW4uCj4gCj4gVGhlIG9ubHkgcmVhc29uIHdoeSBJIGFtIGEgZmFuIG9mIHRyeWluZyB0
byBrZWVwIHRoZSBwYWdlX3Bvb2wgdGlnaHRseQo+IGFzc29jaWF0ZWQgd2l0aCB0aGUgbmFwaSBp
bnN0YW5jZSBpcyBiZWNhdXNlIHRoZSBuYXBpIGluc3RhbmNlIGlzIHdoYXQKPiBlc3NlbnRpYWxs
eSBpcyBndWFyYW50ZWVpbmcgdGhlIHBhZ2VfcG9vbCBpcyBjb25zaXN0ZW50IGFzIGl0IGlzIG9u
bHkKPiBhY2Nlc3NlZCBieSB0aGF0IG9uZSBuYXBpIGluc3RhbmNlLgoKSGVyZSB3ZSBjYW4ndCBo
YXZlIG1vcmUgdGhhbiBvbmUgTkFQSSBpbnN0YW5jZSBhY2Nlc3Npbmcgb25lIHBhZ2VfcG9vbCwK
c28gSSBkaWQgdGhhdCB1bmNvbmRpdGlvbmFsbHkuIEknbSBhIGZhbiBvZiB3aGF0IHlvdSd2ZSBz
YWlkLCB0b28gOnAKCj4gCj4+IExlbW1lIGtub3cuIEkgY2FuIGFsd2F5cyBkaXNhYmxlIE5BUEkg
b3B0aW1pemF0aW9uIGZvciBjYXNlcyB3aGVuIG9uZQo+PiB2ZWN0b3IgaXMgc2hhcmVkIGJ5IHNl
dmVyYWwgcXVldWVzIC0tIGFuZCBpdCdzIG5vdCBhIHVzdWFsIGNhc2UgZm9yCj4+IHRoZXNlIE5J
Q3MgYW55d2F5IC0tIGJ1dCBJIGhhdmVuJ3QgZm91bmQgYSByZWFzb24gZm9yIHRoYXQuCj4gCj4g
SSBzdXBwb3NlIHdlIHNob3VsZCBiZSBmaW5lIGlmIHdlIGhhdmUgYSBtYW55IHRvIG9uZSBtYXBw
aW5nIHRob3VnaCBJCj4gc3VwcG9zZS4gQXMgeW91IHNhaWQgdGhlIGlzc3VlIHdvdWxkIGJlIGlm
IG11bHRpcGxlIE5BUEkgd2VyZQo+IGFjY2Vzc2luZyB0aGUgc2FtZSBwYWdlIHBvb2wuCgpUaGFu
a3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
