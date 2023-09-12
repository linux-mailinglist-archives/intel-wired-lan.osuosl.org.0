Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9A979DA2D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 22:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83DE241B97;
	Tue, 12 Sep 2023 20:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83DE241B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694551065;
	bh=zWgD4urzDr20y9MmdqK+lqWwLb9s52ZUbgjc5mwEOsk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lcx4ghH6yhpWX/bft0JZyO4DdTHp9PREUR/KO1m87/rnXo7DS4HoDWliTx1CNwaTX
	 DMdz+JO1rjaqbqhoJE01RDb42Vw0EYQdLG5bSU6Wc1NMQ9PHoMt6UWOHbF6aznhPrT
	 j98Hy63NAmhGlEj/OPXWzvt7+2mg0z1yQW7y/BWBUw91fj9NKphxenqtfj+OrW0ZsV
	 tVn0BbgtHBcRgErleRtC6MimrXBqITsXjIn4lM7XrMQTFukuZYjFWDZSJACRiLSkJF
	 O9YoLkZF2JXj31X1xzfnA2Y0XEo8GOIjJ4cwJw8lD+Nxw4NMacntnWligvUoJpNr6U
	 QeL1Dq3nh90WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYbhSmc3aSof; Tue, 12 Sep 2023 20:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B0EB41B1A;
	Tue, 12 Sep 2023 20:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B0EB41B1A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4241BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A8AD4052E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A8AD4052E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t_ZYN3MwaIgz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 20:37:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 061144002B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 061144002B
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442509924"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="442509924"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="809410129"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="809410129"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 13:37:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 13:37:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 13:37:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 13:37:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 13:37:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LF+jWPvpErZfeKAmKBR2b6rH3o1iAzeZLXEAPefakEXI1vJODkFtQepkxU6rD65l4WpAU6o/dNg+1YQwJUDV2qXRBVxQb/tmM9DiXwa2CmIkWQgp0sTXV6BT280Y8seHTjf6SDxvV5jls91v9p9oc0UOfPWZ11tny++HYKKg3UhmyOSKB2WKgXtfBmFN0GMJVqHhlRqutuJCn+bftNIJYJV7oN3B7NlKQIaMeBEVAj5BZ75r41/+zr+eKAXEXUgkFMnpU7UfQk6vPpWUcicOgw7SHLdDCCWi2lX+VCAtIT3yQLwluCWbwXlbhN/P2h/qPLPeNhwW9FGSelUP9WVgDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79cky0N69lnf+oI1nEQDE/G4OZw6v8FmJlGSwwpU17Q=;
 b=btF60V80AnS5ORopegpIoT+9DuHsHx1OMDV3pwyXsU61v6FW4XCZ8aOly7ij68wgS2XRkrvYcrJruFLAi6W/MWG6QOjUbS0IT65HvU5Kq4ZGFWEKgaPKO4DWUuyxYJ6GVdTFL3X6YvT623a/EGKa/6c0UVXDlnfDVDMCQuHJIO/R52xIke8z9VFPvTeVm3D0Tmt3CLkLUBC93jxMlvrBlyKntl163mAOqe4cSAaUOUBeIDe83WLpmYtnCxG9+/BtZFp3MjShvqvfD9eCvf6U/qqLiukbSQ5WbcrSb4OMuwlNKOBkOgY5nTPyU2ddfGgwijN/ATYEqxccRlnuvHd/Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by DM4PR11MB5358.namprd11.prod.outlook.com (2603:10b6:5:395::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Tue, 12 Sep
 2023 20:37:31 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::6add:b67d:5d6c:6439]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::6add:b67d:5d6c:6439%5]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 20:37:30 +0000
Message-ID: <f770f4b3-f4f1-4ef7-e80a-d7c75c8b18e0@intel.com>
Date: Tue, 12 Sep 2023 15:37:27 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Tom Herbert <tom@herbertland.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230905153734.18b9bc84@kernel.org>
 <CALx6S34B_BvkNuqALCCT+2V2dL8rwr9n_DnRfevjkW4UwMF=pw@mail.gmail.com>
 <8df3c9c6-19ed-acc8-f2ac-1826a81ab53c@intel.com>
 <CALx6S345sufnhn6zVO03ZauDiU52F9SbbZTgaGm6xxr=yKyPUQ@mail.gmail.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <CALx6S345sufnhn6zVO03ZauDiU52F9SbbZTgaGm6xxr=yKyPUQ@mail.gmail.com>
X-ClientProxiedBy: SJ0PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::13) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|DM4PR11MB5358:EE_
X-MS-Office365-Filtering-Correlation-Id: 83fee7ae-0cc1-4edb-3d2e-08dbb3d015ea
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qYKFjRLNwZdwZXuJI96yQqj/Wmr2C5Pek9uinzVVxkWClwhLPsZ6te5OYSFkRt9MToEUKADMmmNl6xuXNRUps+iznk4sNEnXO9CkLirrnHGJ9zU1Vhrj8GKo68QPVeNaWtzJxRTJfHBsAKeBqDdIXav5JB75IF/vo5alSyxK7g4RFsyNAAqeL3gz7DRQzUk8xC+7pE8PmHcXvKBa/g5pHzGq0wMZ78+/iJgiZWNQF3f7ZvdqBDaonDZCimGgOqBl2ecnqtWEkwN3WdPDMCo+vFhyMzUo3e7QfUf3AipVIUXBlKgum/s1iV1JSUhS4mrP8N9ebHbxVciNf056syp0n4n5vaORtkX7tuq3dwE/cLOxs6sjTWZv+S/P/RsS2/Lw4IuKAkb3kd/Zh3hBIQbkOmpwzOjVsh+Lhp5e8QwhJi29t+nn2dUZSiDGdPcH2a5t/uGfQDFr77KV/HXWKyU7lvfFmX+PTAzFdt2bAfyR8B9QNepwlCJXgOvvFIjsYmOgwLwryEZC/Hy3nEks/8COLDDehSMtwT1j9UyEtOIwb5u5MxADIM+FMGQc/5poZzqe0Dh16/BUzrxw7zXdq2QEPpyS3rwnjzE/tCu6nSAWAxCLifDYLtoPJokol7d1hX8nWIcbcRTEPK6TWv1enbLfeQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(366004)(346002)(451199024)(186009)(1800799009)(86362001)(31696002)(5660300002)(8936002)(8676002)(4326008)(2906002)(36756003)(6666004)(53546011)(6512007)(6486002)(6506007)(26005)(2616005)(82960400001)(38100700002)(478600001)(83380400001)(31686004)(316002)(41300700001)(66476007)(54906003)(66556008)(66946007)(6916009)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?by9lS1N6SzVMdUpIMk5UMndPdTdtSUxHU05kdW91RzFSa2U3ZS9SYmRvbTVi?=
 =?utf-8?B?WDNwS0FkOWhncjlBOXl1L1BYNHJJTVN2cnk2eTdSNGtSYjR3YjZ1ZU9Zcm5z?=
 =?utf-8?B?V0t2SkEzYUg1VjJiN1VXNmVNWGQwejA4TXJ3MmZBbUczRk4vb2JQSUpqbk1v?=
 =?utf-8?B?a1diVDRYVUFrQlFrekZISHBVVlFaZldrTVArSHZtNU1Zb0NpY3JjUVNGQzJ2?=
 =?utf-8?B?N1IxRlZUSVVVT1VYSWpQNGNVdXBNT09wOVJ0elhlaUI0S20xYk5iNnJHSlQw?=
 =?utf-8?B?b0c0MEhIVGQrdE55WDdrT2RrNVIrQUJJZ0N4UjIvTVJrVkFTVHY1WStCekVJ?=
 =?utf-8?B?SmxzMTFlS0JXZ2VrdVpwRXB5bzI5QkJTYmx5MUM1eVRndkFodHNOVnk0OEpF?=
 =?utf-8?B?SFFSLzNQSm84WlJEMmV0K3NEaVcxU2FUQUg3NlNVUGlvNTJNM1pVMTBTVU1G?=
 =?utf-8?B?Z1BBaEZjcG9IRU4waWxESTU1NWdRa3cwU3hDS2x4YXNKM1E5Tnp1TVplWG9i?=
 =?utf-8?B?Y1dDT2IwckhOZVRIQnc2ak5UeWZ5T0FRcnUvdmtCOUlQaTRPV0xHRkVEYzJs?=
 =?utf-8?B?UitjT0FpZkp3TG1tVjJFc215WXhkNUNOMzJ0Tjg5SG9nS0l6NVdlR0pOQit0?=
 =?utf-8?B?N1NrRDVWV2c0d3YzdThGZ3NxdExiOVhBT1JjdnllWGMweGJCb0FQTXdEK0tB?=
 =?utf-8?B?VXZiUGVOK0ZiNmFRUTZYaWFBbjN2UVh6R2pHZlVYSkF0eFVkRlR5N0Q4djJk?=
 =?utf-8?B?cnZ2LzAxRkFkekQ0WVFqbitYQktrWkZ3bjdpTzdlbVFzQWh4WDNWay9tdTZZ?=
 =?utf-8?B?L3FLSXdNNnNjSllWNFRSQUlFZEpBcTNLbXlvM2p0Tk1oeU81ald5U0dhVThN?=
 =?utf-8?B?dUhOQzV5cnBzOHBBNW12S1VBTEpCbVJDYzJjYXAwdFkyS2F4bEpnc2hSaUor?=
 =?utf-8?B?ckUrMDZlUW9mUjdsVXVqNXhuVm01OThvcmM5OVlWOStHMFdWT0I5ZkhVSmhT?=
 =?utf-8?B?M1FsUnJDWHBLWTcvU05pQndkRVRxbnBHVmZzVnVvbFFqdjdFMUJDOE5qVTVL?=
 =?utf-8?B?aW85VjdFOUlpbWQrWGFZdDlhOGdqbnJRZStxVDB4b21ZeTgrdzc3a1JoZWFr?=
 =?utf-8?B?cVFBRkZvczN4dWE2S3NyTW9sRmVJa3JuK2FNVzNYOGYxZytMaXR4dWE2UldZ?=
 =?utf-8?B?bDFma2l6UVNDMWc2T0JPaXVLaUN0cEZDYllwT2pEU29ycjR2ZHNaMmZjSkFY?=
 =?utf-8?B?blRubStUazhYbEVPZktnYXkvdUN1dlBCRTIvT21RZHVidHRNM3JHZTE1d3cr?=
 =?utf-8?B?emtYOHQ5N1I0NlJqVGEyc004TTd5ZUQrVnBSNHhUTnlIaUozbU44alY2Uk1z?=
 =?utf-8?B?TU4vSTIyUEVuMTNqUWNrNGhFWDdrNTFsSVZFTi9FK2dyaTZ4ZnRjTXduYndw?=
 =?utf-8?B?Y01NcEtwRWNsMjRFUGI4bEtvK0FqSEtQN25FYW5CNFk2d0p4aGZqbHVja1A2?=
 =?utf-8?B?c2lGaVoyQ3EyTXIrNUFHaElQdDhRcCthQ2dzKzhYVkt4Kzh6RGNGc1E1YTIx?=
 =?utf-8?B?dXNqQzF1aGJrRHl0Y2ZDTEFzenlic21FSy8wbTZqdWIySFhhZXhIWGdmWE0z?=
 =?utf-8?B?Zkd1ZWVzZFRMYlY2aVlKb05VSHo0TkFaRTA0Y0I2WU1PRTNnWW9Vc0cyTVBI?=
 =?utf-8?B?WnRFSTYzaXRUenY3dTlwYU9YSDhJTWpESS9zUFlaODZFQVZMVWgxQjg5UTZN?=
 =?utf-8?B?WEVKbWJsclpMRmt1SmtiTlhVRldaRDhGcjRnNERWRENYM2MvV0wxamJvcDMr?=
 =?utf-8?B?QmN4TkxSTEVTeTNvaTNLYjdyd1h2NlU4Vkc2NnFhR0lFUytnT1dVK3NVL2xW?=
 =?utf-8?B?Z25wWkFGMnlnOHk2SlZHVk8zd295MXhHL0UyQXRNZ1Nkc2VQZkh5eXlWd21E?=
 =?utf-8?B?dWJ6bkJmTThpemo2NnZWM2drNEwyT1RZV0l3dzB4ekpGWVM5NWdDTDhmMi82?=
 =?utf-8?B?WUlVWmo4c0NBK0orMXM2ZmVvNElaaXJ5L3BwVFJnd2lMRXZnUUpHV0l6TU9F?=
 =?utf-8?B?VlJoT3ViS25uUEZjWitSa0Q1cTNVMDFmRUlNQTlzeHJDa1JwVE5ZODY0d1U2?=
 =?utf-8?B?QmUveTVvU1NiK3Z2UDlPSlRyMmFZdWR5aDBhNEFTa1JLWW93MGZMaXlGZDVR?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83fee7ae-0cc1-4edb-3d2e-08dbb3d015ea
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 20:37:30.7488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WUCTpr0NmM53fxfwJyaR0/jq13Q6r0zoH1XJ51oOOrcKqTTeSEEdpU5KpGPzT0F2ZnKPxEaY1s1i43xn0mbMhptWTM44YaGzc6hiWMoI6tE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694551058; x=1726087058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NCt0qAFG8qbazL4FG2+IudoyuXGTo3nshuBY2i7QDI4=;
 b=mbjW7ovXiM0wD37gw6RcPyGNdgnhUlW2H65Z4eCGVzdXanKNC7LI7xMF
 a3/RmAF8kB+Dc2mikg4nqfA4PP+eaNj/zMurp2AwnlBmTjn5CJt11yQN1
 Dc6wD6MvhbKUApaJo8mMeXOjakdNN6z85bMOMh41oeBz2FSX6nE1rZRri
 nz36zL+DkMEjFnOzl71MpeluCgowpvx7S7e+GR9CmPx3uRs1eiGKQxnMX
 68CH0vloC5HMs00pBvN2nQ2G1b0xvROkTtH3zuUX7rv1nbEn3zIv348rR
 Hq/E7wwSyCnjyuK7y50Z4sVNhXp02IkaZPolUINl06eVfeGH2s02e/8eG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mbjW7ovX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, qi.z.zhang@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA5LzkvMjAyMyAxMjozNCBQTSwgVG9tIEhlcmJlcnQgd3JvdGU6Cj4gT24gVGh1LCBTZXAg
NywgMjAyMyBhdCAxMjoxMOKAr1BNIFNhbXVkcmFsYSwgU3JpZGhhcgo+IDxzcmlkaGFyLnNhbXVk
cmFsYUBpbnRlbC5jb20+IHdyb3RlOgo+Pgo+Pgo+Pgo+PiBPbiA5LzUvMjAyMyA2OjA1IFBNLCBU
b20gSGVyYmVydCB3cm90ZToKPj4gPHNuaXA+Cj4+Cj4+PiBZZXMsIGNyZWF0aW5nIGFuIGVsYWJv
cmF0ZSBtZWNoYW5pc20gdGhhdCBpcyBvbmx5IHVzYWJsZSBmb3Igb25lCj4+PiB2ZW5kb3IsIGUu
Zy4gYSBmZWF0dXJlIG9mIEREUCwgcmVhbGx5IGlzbid0IHZlcnkgaGVscGZ1bC4gUGFyc2luZyBp
cyBhCj4+PiB2ZXJ5IGNvbW1vbiBvcGVyYXRpb24gaW4gdGhlIG5ldHdvcmtpbmcgc3RhY2ssIGFu
ZCBpZiB0aGVyZSdzCj4+PiBzb21ldGhpbmcgd2l0aCB0aGUgdmFuZ2xvcmlvdXMgbmFtZSBvZiAi
UGFyc2VyIExpYnJhcnkiIHJlYWxseSBzaG91bGQKPj4+IHN0YXJ0IG9mZiBhcyBiZWluZyBhIGNv
bW1vbiwgZm91bmRhdGlvbmFsLCB2ZW5kb3IgYWdub3N0aWMgbGlicmFyeSB0bwo+Pj4gc29sdmUg
dGhlIGxhcmdlciBwcm9ibGVtIGFuZCBwcm92aWRlIHRoZSBtb3N0IHV0aWxpdHkuIFRoZSBjb21t
b24KPj4+IGNvbXBvbmVudHMgd291bGQgZGVmaW5lIGNvbnNpc3RlbnQgdXNlciBhbmQga2VybmVs
IGludGVyZmFjZXMgZm9yCj4+PiBwYXJzZXIgb2ZmbG9hZCwgaW50ZXJmYWNlcyBpbnRvIHRoZSBO
SUMgZHJpdmVycyB3b3VsZCBiZSBkZWZpbmVkIHRvCj4+PiBhbGxvdyBkaWZmZXJlbnQgdmVuZG9y
cyB0byBpbXBsZW1lbnQgcGFyc2VyIG9mZmxvYWQgaW4gdGhlaXIgZGV2aWNlcy4KPj4KPj4gSSB0
aGluayBuYW1pbmcgdGhpcyBmcmFtZXdvcmsgYXMgJ3BhcnNlciBsaWJyYXJ5JyBtYXkgaGF2ZSBj
YXVzZWQgdGhlCj4+IG1pc3VuZGVyc3RhbmRpbmcuIFdpbGwgZml4IGluIHRoZSBuZXh0IHJldmlz
aW9uLiBUaGlzIGlzIG5vdCBhIGdlbmVyaWMKPj4gbmV0d29yayBwYWNrZXQgcGFyc2VyIGFuZCBu
b3QgYXBwbGljYWJsZSB0byBrZXJuZWwgZmxvdyBkaXNzZWN0b3IuIEl0IGlzCj4+IHNwZWNpZmlj
IHRvIGljZSBhbmQgZW5hYmxlcyB0aGUgZHJpdmVyIHRvIGxlYXJuIHRoZSBoYXJkd2FyZSBwYXJz
ZXIKPj4gY2FwYWJpbGl0aWVzIGZyb20gdGhlIEREUCBwYWNrYWdlIHRoYXQgaXMgZG93bmxvYWRl
ZCB0byBoYXJkd2FyZS4gVGhpcwo+PiBpbmZvcm1hdGlvbiBhbG9uZyB3aXRoIHRoZSByYXcgcGFj
a2V0L21hc2sgaXMgdXNlZCB0byBmaWd1cmUgb3V0IGFsbCB0aGUKPj4gbWV0YWRhdGEgcmVxdWly
ZWQgdG8gYWRkIGEgZmlsdGVyIHJ1bGUuCj4gCj4gU3JpZGhhciwKPiAKPiBPa2F5LCB0aGUgRERQ
IGluY2x1ZGVzIGEgcHJvZ3JhbW1hYmxlIHBhcnNlciB0byBzb21lIGV4dGVudCwgYW5kIHRoZXNl
Cj4gcGF0Y2hlcyBzdXBwb3J0IHRoZSBkcml2ZXIgbG9naWMgdG8gc3VwcG9ydCB0aGF0IHByb2dy
YW1tYWJsZSBoYXJkd2FyZQo+IHBhcnNlciBpbiBJQ0UuIEl0J3Mgc3RpbGwgdW5jbGVhciB0byBt
ZSBob3cgdGhlIHJlc3Qgb2YgdGhlIHdvcmxkIHdpbGwKPiB1c2UgdGhpcy4gV2hlbiB5b3Ugc2F5
IHlvdSB0aGUgaW5mb3JtYXRpb24gImlzIHVzZWQgdG8gZmlndXJlIG91dCBhbGwKPiB0aGUgbWV0
YWRhdGEgcmVxdWlyZWQgdG8gYWRkIGEgZmlsdGVyIHJ1bGUiLCB3aG8gaXMgYWRkaW5nIHRoZXNl
Cj4gZmlsdGVyIHJ1bGVzIGFuZCB3aGF0IEFQSXMgYXJlIHRoZXkgdXNpbmc/IAoKVGhlIGZpbHRl
ciBydWxlcyBhcmUgYWRkZWQgYnkgbm9uLWxpbnV4IFZGIGRyaXZlcnMgdGhhdCBwcm92aWRlIGEg
CnVzZXItYXBpIHRvIHBhc3MgcmF3IHBhY2tldCBhbG9uZyB3aXRoIGEgbWFzayB0byBpbmRpY2F0
ZSB0aGUgcGFja2V0IApoZWFkZXIgZmllbGRzIHRvIGJlIG1hdGNoZWQuIFRoZSBWRiBkcml2ZXIg
cGFzc2VzIHRoaXMgcnVsZSB0byB0aGUgUEYgCmRyaXZlciB2aWEgVkY8LT5QRiBtYWlsYm94IHVz
aW5nIHZpcnRjaG5sIEFQSS4KCj4gQ29uc2lkZXJpbmcgeW91IG1lbnRpb24KPiBpdCdzIG5vdCBh
cHBsaWNhYmxlIHRvIGtlcm5lbCBmbG93IGRpc3NlY3RvciB0aGF0IGxlYWRzIG1lIHRvIGJlbGll
dmUKPiB0aGF0IHlvdSdyZSB2aWV3aW5nIGhhcmR3YXJlIHBhcnNlciBjYXBhYmlsaXRpZXMgdG8g
YmUgaW5kZXBlbmRlbnQgb2YKPiB0aGUga2VybmVsIGFuZCBtaWdodCBldmVuIGJlIHVzaW5nIHZl
bmRvciBwcm9wcmlldGFyeSB0b29scyB0byBwcm9ncmFtCj4gdGhlIHBhcnNlci4gQnV0IGFzIEkg
c2FpZCwgaGFyZHdhcmUgcGFyc2VycyBhcmUgYmVjb21pbmcgY29tbW9uLCB1c2Vycwo+IGJlbmVm
aXQgaWYgd2UgY2FuIHByb3ZpZGUgY29tbW9uIGFuZCBjb25zaXN0ZW50IHRvb2xzIHRvIHByb2dy
YW0gYW5kCj4gdXNlIHRoZW0uCgpTdXJlLiBCdXQgYXQgdGhpcyB0aW1lIHRoaXMgcGF0Y2ggc2Vy
aWVzIGlzIG5vdCBlbmFibGluZyBwYXJzZXIgb2ZmbG9hZCAKb3IgY29uZmlndXJhdGlvbiBvZiBw
YXJzZXIuIE9ubHkgbWFrZXMgdGhlIHJ1bGUgcHJvZ3JhbW1pbmcgdG8gYmUgbW9yZSAKZmxleGli
bGUuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
