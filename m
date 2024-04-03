Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF30897C0D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 01:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65FB941922;
	Wed,  3 Apr 2024 23:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TuIA3h1IUazo; Wed,  3 Apr 2024 23:29:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AF7641910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712186981;
	bh=k/LFDW7q3IqpmYZX5/P7CS2zdVAq08PbFL5+6bcdaCc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U2p/ioaVia3nnm7hxnlhgEnzCXuKCEnjGl/yRNvN6R2rmPIZu8lLdUwaPLKF0d5qI
	 TsMYCp7oJwyuMoBHcT3WlLJW+za5cdfyyNzLLEE+7A/qhg/RrCfjeQC8DDFoLGmCzU
	 zaS2QLeOZ9SinQuFKx08jbpgXYgIfZgBxMSGGNEy0En4pzFhTev/8G+iMCWko6tsa3
	 UHUjwNefGrWzbAV+CsC8uPvr4JQpR+iYXScCuCRt3khOsJGmPAZ9heqI/nf82a7y9n
	 yI1KZYoBiJdeaT3m9Skmq/XntjGnEYI5Xphft2k4/HaQTXYhJs1+3zfGe0NW4ymJxC
	 /dujPlBsgX6xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AF7641910;
	Wed,  3 Apr 2024 23:29:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE0DE1BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9FED60709
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:29:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hndgoSI6hcg7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 23:29:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C2339606B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2339606B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2339606B1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:29:37 +0000 (UTC)
X-CSE-ConnectionGUID: IBAp9nyLRt2A9obVKNKNGg==
X-CSE-MsgGUID: mYN81vpdQ5OZ9jGWCvpRfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18185667"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18185667"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 16:29:23 -0700
X-CSE-ConnectionGUID: ZZq9Wfr1QOeITtLQQ3wIKw==
X-CSE-MsgGUID: mkiTeTmDQZiMqAnjqjmCZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="23094966"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 16:29:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:29:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:29:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 16:29:21 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 16:29:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z6BRHLNmKbyLgKnQipf/VCIyGsknt9wg0BgdzZWJsd0ob1K28tpO7AEC+Moc8RxBLxtpUko4n5frUM2KhmhG3ODxDzpk4pBMmTB/lT/KBgT2S6QjxJi824LEJ0Bm0xeq2za/cVJKZSvWqe/oxsbNKqWCiGqrWg/4zQZqBj7lG0MdkP0Gv3v9vmh2f1OF9h1dt+bckSp19G956jZ7CAs2hEWVTR0c0eMqJYOierM5GN9fkZUAOeE9EGYynTf2b81XVMdtCfJEOg2/hzJdkt+0S/RBLu+LJ0+cUDYqasSuYCOYe3jbb4tmoiZl0LWAWryc5/IN73iNPniklFjk0Hs6PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/LFDW7q3IqpmYZX5/P7CS2zdVAq08PbFL5+6bcdaCc=;
 b=T8LxS5LD8Nk1g+FQAR3V6eRaSX7MId9VeWMXf9EJyKa09ZDygaSx/Yu5IcChlVBjdhsgZAGFPFrQf08zh8yt2u4FS0OlI7Z+nzNW5YS1mw95xG8YLmPa3KG4cUgdMuygFPqrgkbjZ+Yt7e1xjZmgRdW1hD63wxUulQCty4rvJ0mgXMXPexvgRomUDhpiO7/Rb0dehvVtenDtE/NHUfdL4s/pgXfa0On3WfhyJm5JIsDDXoPR/VVahuok8QqoW4vOumhKN9ifsG56kcHktYAKSN/NCyZCyowK2NX42VzTPsdavupWWsfohcPt6mHPCGuqifKPi1pbv1XClplnjAdc7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 23:29:20 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 23:29:20 +0000
Message-ID: <89319d68-1618-f94e-e2a3-1f7503705f94@intel.com>
Date: Wed, 3 Apr 2024 16:29:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
 <20240329161730.47777-20-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240329161730.47777-20-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0018.namprd02.prod.outlook.com
 (2603:10b6:303:16d::17) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4727:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bFya80L8VLT4N9ke4Y0kR/k2u7eGSDJ2UHnjTilFh0IPNexi/O5KIlFEUa9UzQoE7WswvbtxorfvSQtIt7ebahC5fsFcoeReLoNQFOHOywxx231iOujXrokJAMCM+KzbKAfCyNlCFHiP/ImolixiJBpRD4E99W7rZHXhSkUjo4f6mn/GnlMTDxBxEr+P8fyROKK1IJ+E9brPDX7bX6vMvmGCcCxwTpgVhdgmMZT/Aa1QNQT/ggS0yYKujKC1tzwY/x0O4kUFY3KmTP/sYFqCx8PkOtqALm8j2aLmoPKlo+jkTOq46x+TKT+hdvZqPLYxwC3FeUlC//D4KRBK48WdSK9488PRjdMFGKjR5tGQySz8Bketb0LoYuVXHz1FckmrrSwlrhdfekINyGmUXdVw0bDr+1pKzjdyL0k37Eq8RPv4CXk8ins1BrXZARY14ifSJ5OQ4WLL1Etu+KI3cmoe8OsmZ7NPCFZ5QUhjgFZJlRzkshNBn1eiOCjKVxlyuXTyMel+cDiv2ueNzvWpJTziYl0Tz81523uJfNYalnz5SGEaIkvNa0pUdR9w060zdDXqHvSfvagYYlDppIl9UNTuoLn6HxLEyF7Yjgiiw7A1PHw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXgrMmxMclhyZEVReGxwUXFRTm5GTWlna29CWGo1aDdUYmVGY1RXeHBFVFhi?=
 =?utf-8?B?dGFKZzhHenNlcTZDL3JXY0l4MlZmTU9BcHJzY3dnMU9QcUI4YjJBd1ArNzU3?=
 =?utf-8?B?NTFGYkI3M3p2NXo0L203NE5sVmM5emR6NjdFU2t0NHBaTEgyM2hRSTBUWWs2?=
 =?utf-8?B?MHN3WVhrV3RlYVBrTmFVZEFzaVFxU1RHbXNOemdWL09RL0ZtNThmMjdXdktO?=
 =?utf-8?B?M2J6djNaL2JHYm14VDZnU3hqamo0aTFSU1VYOTJXajJUQTF5d0UwZU9mdDN5?=
 =?utf-8?B?TWp2T3p1MlVLL1NOcVg0WGN2d3F4WUd6OHFPNTJRQ2RkdHJ0cmdQeWVLS3dq?=
 =?utf-8?B?dGd6OWsvdFI2bndMS3podmt1eUNIaDdMa2ZWRTVkdDZZOTBpaUdyK0ttYVBp?=
 =?utf-8?B?THVodGNwQjlHeit2RTdvMEVzWS81bzM2TGJKbDlmb3ZxWHV3TmpaeDh4VGp5?=
 =?utf-8?B?QVEzUVdUZmY5VDNDb2h0cUo1dGp5eFVLbkVoM3Eyb1A0RUNtamdIb0tPMDcx?=
 =?utf-8?B?eGpYSFdrUGRoRVdyQjNjN2dwYk5KMW9yN0IvRi9hRmZNRUZweTQ1SnJvSW55?=
 =?utf-8?B?SVhBRFZWVVphZnVwNUkzV3g2enJMS1dqa1VtQnVoeE91Mk8wWXdDVXZPNmRD?=
 =?utf-8?B?NnZ5UUxMMDFDcHljemUzOG5DNU10bkhUMVhDa0RVRjEweHZTT2hOZmkrS1ov?=
 =?utf-8?B?eExYQlRQTnA2RXFGV2lId0xYK09Ecnk0djV1c2lxQ0YwVExwSWNWRWs3alZU?=
 =?utf-8?B?QVRuRndaNDhZZlV0dE4yUENROERrOXNkM1dnS1g2bUlrdTR3d1VtVWFrNUUr?=
 =?utf-8?B?VStYNzJHa2FkbTA1ZFF0L0NWRXRNZzhFeXZYUWJVdjMyQVVJYjliTEx5NzVk?=
 =?utf-8?B?eWFGSUZaVUdKMlRzWXpUcXI3WmtOZDVqSVNRWTJ4Mk41V0d6eVpyUGVvYytZ?=
 =?utf-8?B?a2NpTXVSOXc1ZzY4WHZTcGFvODNXZ1hkYnBhcytsMElQTS84RTFjUnJueGhm?=
 =?utf-8?B?SVpVVWNxcDlQak1NQ1ZEaG5oTGJxcTB3VUJ1d3dPMXgvdmJEV3NXb080N3B0?=
 =?utf-8?B?NFdDckhtME9NMHQyZUhNcjdwTW9MOHRGSmZDVm8yVFBaM2hNRm12d3IvOE1z?=
 =?utf-8?B?SkRaakg5dnF6NUFmbjZYTityVHAxNm05SUlrQVZqQUZZWjdNMGNTMWxaOElr?=
 =?utf-8?B?eTRhMGJUMTErQ2hGMCtvOWdnaUdWY2syRDI4eFYzY2V0RnpUU0pTWSttc3pj?=
 =?utf-8?B?TFIvSDZzYlpQM0hSZys0MHlWSklLNEF5TUNUZHYzdlQ3cTIwM2xrZENXeERI?=
 =?utf-8?B?ZEd6bWFuR0dNZUVFMUlsdmpxTTlxZENUOFkreEYwdEJ6Zm9YWVZTM0x6aDI0?=
 =?utf-8?B?WHNweGNCTTNJaTl0MTNmMWlPWVFKclQ5ZGZFN0lmY0dxWUFleHhvc210MUJz?=
 =?utf-8?B?QmEzUngzUHRlUkdSc3pFek5BSTBSSGJWVW1LUFF5cEluMHZiRkVFLzVjcnBY?=
 =?utf-8?B?YVM5UWpyQitjUU9tZll1Z3llUHlJY2lrcmhubkNMQ0VBeXhEd1JTK21tMlUw?=
 =?utf-8?B?clhCQWxMSHZYT2svTGVPU3RpTGE2WXF6UWcra1V1ZVlRZzd1QUgrQ29oZmVx?=
 =?utf-8?B?NzZmRWxBclg2aFhia0dwTVJ2bHJjU0lvK2RsdCtZRVdZQlFETG0wdzFMeVlj?=
 =?utf-8?B?cGRPV0pUWk5mTURFU0F3azR0UHNIZndwVXVZNkpDZ2VOa2RtTUt1YnFHTlFF?=
 =?utf-8?B?dGo5WG9mcDRRdWtIenl1YXUwenlLUkJZTE12c25ySTRSVzB4UXpSRW1iQksw?=
 =?utf-8?B?eTFXUDY2Wm53b3h1eUtSWEQyNDZrRlpSd1hBS1ZHRGlrRjVjSzRQNGFCRjhN?=
 =?utf-8?B?YnpMdWJwWVZ4OFlUbStwUmg1UHdHSG5NTk9xSHFnUkZNVUpaL3Viak5HWTEw?=
 =?utf-8?B?U2Z2a3h2ZU1tVTVEWDV0NlFMWHlTK250c3ZIcFBoYkd1RG1XSnI0REZMZTQv?=
 =?utf-8?B?bHg3Y3FHQTU0dktjNFE3YnpQRzRXVlhaZ0Y2T0Jkd1lWcXVINHBPcmpYQlNp?=
 =?utf-8?B?SmVpdnJZc2g3MlE2YXpYOE04Tk02WXVrSzViY3NvTEVwZ1N2ZytGTlJ0bmxS?=
 =?utf-8?B?dFFrUXZkaXJHUUoxd0JDV3AyNUJnNm10YzZncytNOTNpZXRJTGkrTStBOS9H?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06952c0a-07b5-40ea-a568-08dc5435e302
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 23:29:19.9835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nygNvYNUzYjX7vFfoCdNeBXFsOjMy3ydhm6NUTm8vAF+HLh0Caclxhww76eYvspMe0edD+/r+zw6lVq9QsCLEjAmYAJE8FDFGPCPrVC8RuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712186978; x=1743722978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xbVmkDIJ3qSuRSspwWFEKWOe2xelbTB9eNJo6qiffU=;
 b=QvZR0JofSYn6DBsjMtLj+C5QS5u74fgii+bEHHdulLEVQlTZk59GX8QD
 /KNSBLDqKjEBnoDhYV2+4TbZDLAqBqN71j3IgHd2bzJKecFda1bm4q2sf
 xct5eFM1jKW5sKXSELcIegj9iKyOOdNMldd3NIOMnUmvTFAVawdyK21s4
 Q71u9+28fpEdN6jvHENIwRbE3r1mnlwwpiG71l6igrpWuyQlOBiWm9+5f
 DfvxgO5CtCmEiwiUjZIY6HNHWwKxa/bW/9//4WrObfiIpzUn6Rb1OvMQO
 ifz656RVxjF3sCUS1X5swSJM7lqCDxT7mhnDOu4kh2IPP1PjCugbAiOUv
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QvZR0Jof
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 06/12] ice: Introduce
 ice_get_base_incval() helper
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/29/2024 9:09 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add a new helper for getting base clock increment value for specific HW.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    |  7 +------
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 12 ++++++++++++
>   2 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 7980482bbf56..cd2dab7b4c44 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1210,12 +1210,7 @@ static u64 ice_base_incval(struct ice_pf *pf)
>   	struct ice_hw *hw = &pf->hw;
>   	u64 incval;
>   
> -	if (ice_is_e810(hw))
> -		incval = ICE_PTP_NOMINAL_INCVAL_E810;
> -	else if (ice_e82x_time_ref(hw) < NUM_ICE_TIME_REF_FREQ)
> -		incval = ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
> -	else
> -		incval = UNKNOWN_INCVAL_E82X;

Unknown used to return a value:
https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/ice/ice_ptp.c#L10

> +	incval = ice_get_base_incval(hw);
>   
>   	dev_dbg(ice_pf_to_dev(pf), "PTP: using base increment value of 0x%016llx\n",
>   		incval);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 5223e17d2806..d477d334b1d8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -285,6 +285,18 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
>   int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
>   				      unsigned long *caps);
>   
> +static inline u64 ice_get_base_incval(struct ice_hw *hw)
> +{
> +	switch (hw->ptp.phy_model) {
> +	case ICE_PHY_E810:
> +		return ICE_PTP_NOMINAL_INCVAL_E810;
> +	case ICE_PHY_E82X:
> +		return ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
> +	default:
> +		return 0;

but now it's 0. Is this on purpose? If yes, it was the only usage of the 
UNKNOWN_INCVAL_E82X so it should be removed.

> +	}
> +}
> +
>   #define PFTSYN_SEM_BYTES	4
>   
>   #define ICE_PTP_CLOCK_INDEX_0	0x00
