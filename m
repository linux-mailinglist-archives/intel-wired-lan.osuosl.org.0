Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3228933F3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E5E28120C;
	Sun, 31 Mar 2024 16:51:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zdepZD9uMaGo; Sun, 31 Mar 2024 16:51:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A1A81212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711903903;
	bh=BVAUH3VosTIjod8+S4FuD55QldqtU5t6qC49+ENXFp0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RQQ7xrkLkRTptV5swJjGZff69qOqPo8MerehgVzu0yL3N+bwwzb1Jro+uvdagHhd3
	 AsRouRq3/FQtJH7BsOfOEIWHzN/MkgLQFHU3zCDAbTAVQZCJ4cD3FBarTCBgkY7bJe
	 4kF2KODcFayGt2456Vb+HeCwbAKp6i9osPTdoVls6Tm76Cbzb+3OX1kT+0Epd0Az91
	 xcsLBXbvnbIBSqgBx/5lmlo2Ky7T1KXuVld7tcT3du0ZgVeLV28QhtSFHiZmOVI51q
	 C7D+IRYt0IPfIhP3TipVYi1EoQ5DRLhBeWqTokPT45V5RmisXNz3+uuS3hFXonMGaZ
	 RlQEnlF7J4uyw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9A1A81212;
	Sun, 31 Mar 2024 16:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67F621BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52EFA405A2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0KnS-clLr9xN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:51:38 +0000 (UTC)
X-Greylist: delayed 483 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 31 Mar 2024 16:51:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B86A040524
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B86A040524
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B86A040524
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 054AB208B2;
 Sun, 31 Mar 2024 18:43:33 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Id6a8IGURfLa; Sun, 31 Mar 2024 18:43:31 +0200 (CEST)
Received: from mailout1.secunet.com (mailout1.secunet.com [62.96.220.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id CDDA920896;
 Sun, 31 Mar 2024 18:43:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com CDDA920896
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout1.secunet.com (Postfix) with ESMTP id BED0B800060;
 Sun, 31 Mar 2024 18:43:29 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:43:29 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 16:36:16 +0000
X-sender: <netdev+bounces-83460-peter.schumann=secunet.com@vger.kernel.org>
X-Receiver: <peter.schumann@secunet.com>
 ORCPT=rfc822;peter.schumann@secunet.com NOTIFY=NEVER;
 X-ExtendedProps=BQBYABcASAAAAJ05ab4WgQhHsqdZ7WUjHylDTj1TY2h1bWFubiBQZXRlcixPVT1Vc2VycyxPVT1NaWdyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUAbAACAAAFAAwAAgAADwA2AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5NYWlsUmVjaXBpZW50LkRpc3BsYXlOYW1lDwAPAAAAU2NodW1hbm4sIFBldGVyBQA8AAIAAAUAHQAPAAwAAABtYngtZXNzZW4tMDEFAA4AEQAuyVP5XtO9RYbNJlr9VbVbBQALABcAvgAAAEOSGd+Q7QVIkVZ3ffGxE8RDTj1EQjQsQ049RGF0YWJhc2VzLENOPUV4Y2hhbmdlIEFkbWluaXN0cmF0aXZlIEdyb3VwIChGWURJQk9IRjIzU1BETFQpLENOPUFkbWluaXN0cmF0aXZlIEdyb3VwcyxDTj1zZWN1bmV0LENOPU1pY3Jvc29mdCBFeGNoYW5nZSxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXNlY3VuZXQsREM9ZGUFABIADwBgAAAAL289c2VjdW5ldC9vdT1FeGNoYW5nZSBBZG1pbmlzdHJhdGl2ZSBHcm91cCAoRllESUJPSEYyM1NQRExUKS9jbj1SZWNpcGllbnRzL2NuPVBldGVyIFNjaHVtYW5uNWU3BQBHAAIAAAUARgAHAAMAAAAFAEMAAgAABQAWAAIAAAUAagAJAAEAAAAAAAAABQAUABEAnTlpvhaBCEeyp1ntZSMfKQUAFQAWAAIAAAAPADUAAABNaWNyb3NvZnQuRXhjaGFuZ2UuVHJhbnNwb3J0LkRpcmVjdG9yeURhdGEuSXNSZXNvdXJjZQIAAAUAIwACAAEFACIADwAxAAAAQXV0b1Jlc3BvbnNlU3VwcHJlc3M6IDANClRyYW5zbWl0SGlzdG9yeTogRmFsc
 2UNCg8ALwAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuRXhwYW5zaW9uR3JvdXBUeXBlDwAVAAAATWVtYmVyc0dyb3VwRXhwYW5zaW9uBQAmAAIAAQ==
X-CreatedBy: MSExchange15
X-HeloDomain: a.mx.secunet.com
X-ExtendedProps: BQBjAAoAG0amlidQ3AgFAGEACAABAAAABQA3AAIAAA8APAAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5Pcmdhbml6YXRpb25TY29wZREAAAAAAAAAAAAAAAAAAAAAAAUASQACAAEFAAQAFCABAAAAGgAAAHBldGVyLnNjaHVtYW5uQHNlY3VuZXQuY29tBQAGAAIAAQ8AKgAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuUmVzdWJtaXRDb3VudAcAAQAAAA8ACQAAAENJQXVkaXRlZAIAAQUAAgAHAAEAAAAFAAMABwAAAAAABQAFAAIAAQUAYgAKAKkAAADLigAABQBkAA8AAwAAAEh1YgUAKQACAAE=
X-Source: SMTP:Default MBX-ESSEN-02
X-SourceIPAddress: 62.96.220.36
X-EndOfInjectedXHeaders: 19115
X-Virus-Scanned: by secunet
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=147.75.199.223; helo=ny.mirrors.kernel.org;
 envelope-from=netdev+bounces-83460-peter.schumann=secunet.com@vger.kernel.org;
 receiver=peter.schumann@secunet.com 
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com EA81E20839
X-Original-To: netdev@vger.kernel.org
ARC-Seal: i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1711745212; cv=fail;
 b=EPPgqq0/xVCZJIN8n8jxFRo2LU4hOL5RED3tgLYBNs5IviTRzHenveHox8DAIqGGYZGrab/mUHE4RbKGnuKr6Kkk3zUSL+W+VDWQ2frPHSLzMTW0pZd+qXdSQIPhowCVR38J2feSqqMvTxTtznYVhSuQkmemp9/YTKW/rS6STU8=
ARC-Message-Signature: i=2; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1711745212; c=relaxed/simple;
 bh=T0W/vcVcQMWX87w1VyY2NuTB5lHo0SBiBl0eXikknTo=;
 h=Message-ID:Date:Subject:To:CC:References:From:In-Reply-To:
 Content-Type:MIME-Version;
 b=ihm8naKikxtjV14wGHvXLAfLrnHHBS0x7g19Yzo+ljucn/OufFjEWGcxVcGZzZdXP0zJBfPXx51JcMGBbdvLbzCJoMs1Xo91z5ekuAzoMJXczJNpnMwViYgfsstbEj/gjyDDFjEXy3wSNxWIbX5Qptk1TpNdSUKXo0ssEPpLkGU=
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none) header.from=intel.com;
 spf=pass smtp.mailfrom=intel.com;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b=N7w9qkGK; arc=fail smtp.client-ip=198.175.65.16
X-CSE-ConnectionGUID: hF85gnBIRvqL0aqa14TKwQ==
X-CSE-MsgGUID: M+6GhsIzScOUgzA8Wo5nDw==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7062625"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7062625"
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17056286"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOw77p6bDHulD1sUgk2apPvNvQqlPbVPNUvZeS+JWW4Pp3CBgVmxzUnLXgAFuhWtTYv/kVmT5pg8PJyTKaGycVEViXIkEugHGxeOOXFGqO1vapRpUT4Dj1vGwBmN/Yqe/W8Y18XXAKKyG0KNrFNebRQyymgH1txZy+PgjLwayQYCNKNuH+UGG01L6pynkCDDnfnh2yUiGRmYymmmqp/sXZy/ngTF5gxymAwuvI7i15gzxi7vk1kYfGO+cQQ5GbgK4DqrzlqE3E49ZvQHnkdr1Lqt44+75PEzhiVXv9kc8A6Fl2VrdiYXl1p2WZxjf33icDEEZIBMxkJevBzQZFwUMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CX2vHtBbI9qqg/q0TRV1qETrkmc07CDFL0CyPCDq3J0=;
 b=mGrMNqv4ysPSmgN7wEYqNcTNEc+pI7GcyR07j3ryYrqEXiRIQwyamSmabnE/RT6N6oIO/7QQec9dJ/XFd8iLkn2Eep5kro7b+x152dYLzPkEWSDnGjYPb5iwmGzlntyAK7gY7DOWDMg0gwwIWSpcilSl9XiZY5+exJUvd1YFG2DQkVSYpxKpjpNPH7281JVvR6A/nHEQeNcvCtViVEcWgzcUDrE6hcDHJ7+fSHRv+ghCWcDIWcKtB9ZdQXchcVzTwq09gqWsU500XVfd+TrohUI5W7BQPE3zf0nBIM9gvT6IImBoC1548VeFov+DF42opgsJc5gt+PjXZgf5sGIOtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Message-ID: <ba809a2a-3850-27ab-5836-f6705150f0a4@intel.com>
Date: Fri, 29 Mar 2024 13:46:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
 <20240327132543.15923-10-mateusz.polchlopek@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240327132543.15923-10-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7190:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aQR7gzJpvGbGWdczuueAUgY27xwKkg8DeTNUHRshyA2aJ/iufvOUrB6jU6Lmww/7ESr1N3BFc0+sGAdU1i8yWA1b1ggIEctXakPezyf6roOdskSUtpbdfMH5GznesFrqjiBCqK4lo/WtxhKxA/h+t/oemBxZ1m4tixQDVlcbPAV+bpweEL6Pht2paUox2YuYZdJ63mLB+RVHsPQ66tz8x5hBjKd6R5LRsFxzfGY/m8d/7RBoA1KFetcsqPGHTE4VGpRz1r8px6jZFyXObHGKQfJnD2Cus7OdIUeAyyvJod2hGJwgKReJW9sDTu2iuS9YR06zqS6221E1cEcyhCGAU16thBDo1r2TZHH+YGLepE7A9YDOuZ1QG0Q7mAfysvjNYxQUHfucbAX+BPz+VRVqdnxm8Z4sXJYaWSFzcmNQ8DXMlpRziV3Q2iDtoJTdCTC7qFwODFsycNkK+M7qDeVZGE/ZFjCYgLjkNGsNSg5rvorA1Ok8VtBeTWVZY2UGHH5kjbd+qd/QvgyYsqnzyjTPGbA5ESkTs47ObSDCy+vR0m3WuuRDoy18o6LgjJMpozSEYvlKYjApDc8W2RyHpSC1SYji5/Pd1F9EblK0MW2UDWJcRU9i1gv/XlfcPaR/wLYi9B8d9z6c5QegkNs5/alZ+w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmJVZVMxZ0JSNDAwR0tEMms4WmhTNXMvSUlGM3RRWGdhQ0FSZHlLbUNINTJ0?=
 =?utf-8?B?QjdiU0NQMVFGRVlkOEFpbW5FWkM0dEYrMVVlT1NIRThtd3o4UWZlT1Zrd0g2?=
 =?utf-8?B?eGxUQ3NQby9zQzNqYmh2UU1HRzlXS1dsUDdjdkRENXNEM2xCTkdObEpXdHFz?=
 =?utf-8?B?aFNxSFpvY0hlakRUZFFaNktQaWl5R3V4QlREQjhwVnE3Slhkci82WlErcWdE?=
 =?utf-8?B?RW8yRUhqNWJwclBtWEt2YzZySEhadHdib0JEcGFHNUJKWDh4dFBhU044eE5J?=
 =?utf-8?B?ZFB2Q0VMUDFEM3d0T3VYSmJMTStLSDNJQkxWYW1oYmpJK1NMNzNmLy9pSGxl?=
 =?utf-8?B?WUFKQ1JQZWtrU1FNeExIMFJZU3FaMlo4ZHlUNkNxSGpZZk5QVFArUjRMQWRB?=
 =?utf-8?B?cm43c0hheFdXZ3FsZmt5ZUYySGN0MlAxblJwQ1lWQldkRlllZTgySzFZQ1Iw?=
 =?utf-8?B?MktsZ2pMbWFmRzNYV1k0cWdKNm9jTzVCZktqL3NBdjFqQmVDbUZVcDIwdWZQ?=
 =?utf-8?B?dEhTdWNvdjNpUlQrUEF4dEY2WC9wRGx5NVRqSEJFbU1BNTlGL2Q0TkpSRUpZ?=
 =?utf-8?B?c3grVlNxbGxNMDhqWWd3Mkg3bFlnTDJCVWpJNVo1QXJSTFd2QnF3WVVLeHJV?=
 =?utf-8?B?ZEg4YTZaYjlESmE3L3FGN2k3STNaV3FmbHhjT3o3NDRrMFJUbWFqelk3Y1FP?=
 =?utf-8?B?ZW9JVlM2YytIYWZJQXl0azlyZnNLUVRPT2o1Vm1VN0ZIY0dtYzd4RmdETGFr?=
 =?utf-8?B?djJzaUdnR0d5dG5TNmplayszM3p0RXEvMzJ4TmFYdEZzT2MyOU4rNjc3WnpN?=
 =?utf-8?B?dGZLNVZVSnBpQ21qTVhwdElCMFFxNE9GcTBuTFJ2dTB0cWpFRFB1U00yNXNz?=
 =?utf-8?B?TzJjM0dOZjU4aWhyNmRVKzM5WllibFBtdWFJcHNjVHdSSlhKR1VHckdtck9X?=
 =?utf-8?B?OUdIakk2blZ6dzViTDNaZVlJb2VTcUF6RXBtVVYxZ2poYit1VDRKb0w5TnFG?=
 =?utf-8?B?LzZDaTlBbnpzeGc4U3lSRnRnZURub2NNYno3Y2M0YzJ3M0pET3NxZU5mNnBD?=
 =?utf-8?B?cTUvSUh3cFJlbDRVUEJGN2Y2MUt4cGVITjZySFNWdXlsWHBtTEJaeHFBbGNo?=
 =?utf-8?B?aDNwMWhmMDgzL2xMUTdNclZzdjJLSVpYMzRzamdVM0c0bkpudlNGbTlKVmhs?=
 =?utf-8?B?TDZEd3gvZEo5ODZyM1o2Vm5XTE5BcDIwcmhzdVhTME83WFJaOG1TVVhOb0VU?=
 =?utf-8?B?bHpjSkFpNlF5YTRveHdDWmdXMHlOTnZSWFFlNnk0UjRTSVNTK2p5ZVdUVHl4?=
 =?utf-8?B?aERwRjdvYkFoOGNyVktEUUxWajJQWnUrU00wbzk2cTl0ZVBPSzh2a0ZCWkw3?=
 =?utf-8?B?czBFbUoxNjJpeTU1T3dML2dtMmdhd2l5QjB4T2dLYkE0YmJtdkJoSGdlcWdV?=
 =?utf-8?B?NlhodzZ4OFNsdjFUeHVtZnRjSElueVp6cktQeVB6ZFBDbi9JVW5kYXhFMEZL?=
 =?utf-8?B?T0JxemwxdE1ScmFuNU9JMXRuZ2trMmdZdXoxRTI5WW9aTlQvQjF5RXBwOHM5?=
 =?utf-8?B?RUhNMWl4aklVbndBYkNhZlVoem8wZWMxczluU3gydXZIdDdKQUVna2hqN3Vj?=
 =?utf-8?B?Tld2U0pGY0FYWnBqMW9ZcU15ajhWd1pPZ2I5VSswSVZYRW8xSFN6T29SY255?=
 =?utf-8?B?dXNRZVZhTTFCejJQNGJKWkFJazdGN1h5L3FSQldISUx6K0hkbUR3emUxUHIz?=
 =?utf-8?B?UUViNUtBTk1WaUNmYngxdEZMQytTdXdHczFGMlpWUTdQYkFwRk9Pb25mR05t?=
 =?utf-8?B?ZitaYlpZRFdleCt3cDkvRDRodCsrKzQzUUFJQytCeVNCWlFqNWZCOS8wdWk1?=
 =?utf-8?B?dGhrSEI2R3FEQ3FkYkVYMWc2SS85akwwV3FVbFRvcXpwSndhWk0yVXpaUk1W?=
 =?utf-8?B?MEdVSVk4Q29PUGl5TFBKOUV5SGllWW1hd0N5clhTZTQ1LzdNbzBiempKYkNy?=
 =?utf-8?B?UnFFTXFQWHZUeG9nNTdGSG5XZlFlRjhJYSttVWpKVUkxRDFHSnlWNFdTRGhq?=
 =?utf-8?B?WTNST0cvRFowcHhKZFM1T0RoZG5Oak51WDN2cWg5NEwyRDJEOEZFYzUvcGRD?=
 =?utf-8?B?TzRWbVVneWxodm5wZFpDc3BiUTJBRUJRUTBIYXhmc0YyMFVwY1FKVmdBQWNY?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05c0ce0d-669b-4350-f9cc-08dc50315a0d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 20:46:47.6218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 42PuwosqQtAMyTcy9wYJ3OAdeZ4COjreAxG4pfD9oN7Sa/IJDQ9lwYU5Q7qepPoIElrYpoeP0FqpOWoLl726lzF8sCRUO5BJGjXOGP94JRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7190
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711745211; x=1743281211;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T0W/vcVcQMWX87w1VyY2NuTB5lHo0SBiBl0eXikknTo=;
 b=N7w9qkGKbxGElbVR6cggyhMh1Uu08DXnri3RgTCzhXHFDcUvp4a8jBjY
 G2o3hwpMaXqaMSRRBssVFjyDPOZkRjrBE75I+mr2NOUxJCu/IJPgTxMTo
 KQBDTXQAoHB9xVhYoKVJ7mIpsjff30Qvofp4q5kuYfqu5B0T/Lggoicbv
 WcnaDw2DtNx8BX+8efPqvRLqg4sA68tHlTvgn1/cGoWhTH6BhCFCyIXmH
 vZHWmEiHa3K8Odae+057OJIQAxmkabaesbw1z2889A0uPAufCzLqCsYgY
 UVxP8Up77PYD/0dy99AvVMU7ERJDBL+J2GH9G8U5hhrR4Qsid58X5U8KF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N7w9qkGK
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b="N7w9qkGK"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=fail
 smtp.client-ip=198.175.65.16
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 spf=pass smtp.mailfrom=intel.com
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/27/2024 6:25 AM, Mateusz Polchlopek wrote:

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/et=
hernet/intel/iavf/iavf_txrx.c
> index b71484c87a84..c9c4f255bc8b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

...

>   /**
> - * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
> + * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
>    * @vsi: the VSI we care about
>    * @skb: skb currently being received and modified
> - * @rx_desc: the receive descriptor
> + * @ptype: decoded ptype information
> + * @csum_bits: decoded Rx descriptor information
>    **/
> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
> -			     struct sk_buff *skb,
> -			     union iavf_rx_desc *rx_desc)
> +static inline void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *sk=
b,

Please don't use 'inline' in c files. More usages throughout this patch=20
as well.

> +				struct iavf_rx_ptype_decoded *ptype,
> +				struct iavf_rx_csum_decoded *csum_bits)
>   {

X-sender: <netdev+bounces-83460-steffen.klassert=3Dsecunet.com@vger.kernel.=
org>
X-Receiver: <steffen.klassert@secunet.com> ORCPT=3Drfc822;steffen.klassert@=
secunet.com; X-ExtendedProps=3DDwA1AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9y=
dC5EaXJlY3RvcnlEYXRhLklzUmVzb3VyY2UCAAAFABUAFgACAAAABQAUABEA8MUJLbkECUOS0gj=
aDTZ+uAUAagAJAAEAAAAAAAAABQAWAAIAAAUAQwACAAAFAEYABwADAAAABQBHAAIAAAUAEgAPAG=
IAAAAvbz1zZWN1bmV0L291PUV4Y2hhbmdlIEFkbWluaXN0cmF0aXZlIEdyb3VwIChGWURJQk9IR=
jIzU1BETFQpL2NuPVJlY2lwaWVudHMvY249U3RlZmZlbiBLbGFzc2VydDY4YwUACwAXAL4AAACh=
eZxkHSGBRqAcAp3ukbifQ049REI2LENOPURhdGFiYXNlcyxDTj1FeGNoYW5nZSBBZG1pbmlzdHJ=
hdGl2ZSBHcm91cCAoRllESUJPSEYyM1NQRExUKSxDTj1BZG1pbmlzdHJhdGl2ZSBHcm91cHMsQ0=
49c2VjdW5ldCxDTj1NaWNyb3NvZnQgRXhjaGFuZ2UsQ049U2VydmljZXMsQ049Q29uZmlndXJhd=
GlvbixEQz1zZWN1bmV0LERDPWRlBQAOABEABiAS9uuMOkqzwmEZDvWNNQUAHQAPAAwAAABtYngt=
ZXNzZW4tMDIFADwAAgAADwA2AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5NYWlsUmV=
jaXBpZW50LkRpc3BsYXlOYW1lDwARAAAAS2xhc3NlcnQsIFN0ZWZmZW4FAGwAAgAABQBYABcASg=
AAAPDFCS25BAlDktII2g02frhDTj1LbGFzc2VydCBTdGVmZmVuLE9VPVVzZXJzLE9VPU1pZ3Jhd=
GlvbixEQz1zZWN1bmV0LERDPWRlBQAMAAIAAAUAJgACAAEFACIADwAxAAAAQXV0b1Jlc3BvbnNl=
U3VwcHJlc3M6IDANClRyYW5zbWl0SGlzdG9yeTogRmFsc2UNCg8ALwAAAE1pY3Jvc29mdC5FeGN=
oYW5nZS5UcmFuc3BvcnQuRXhwYW5zaW9uR3JvdXBUeXBlDwAVAAAATWVtYmVyc0dyb3VwRXhwYW=
5zaW9uBQAjAAIAAQ=3D=3D
X-CreatedBy: MSExchange15
X-HeloDomain: b.mx.secunet.com
X-ExtendedProps: BQBjAAoAG0amlidQ3AgFAGEACAABAAAABQA3AAIAAA8APAAAAE1pY3Jvc2=
9mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5Pcmdhbml6YXRpb25TY29wZREAA=
AAAAAAAAAAAAAAAAAAAAAUASQACAAEFAAQAFCABAAAAHAAAAHN0ZWZmZW4ua2xhc3NlcnRAc2Vj=
dW5ldC5jb20FAAYAAgABDwAqAAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5SZXN1Ym1=
pdENvdW50BwACAAAADwAJAAAAQ0lBdWRpdGVkAgABBQACAAcAAQAAAAUAAwAHAAAAAAAFAAUAAg=
ABBQBiAAoAqgAAAMuKAAAFAGQADwADAAAASHViBQApAAIAAQ8APwAAAE1pY3Jvc29mdC5FeGNoY=
W5nZS5UcmFuc3BvcnQuRGlyZWN0b3J5RGF0YS5NYWlsRGVsaXZlcnlQcmlvcml0eQ8AAwAAAExv=
dw=3D=3D
X-Source: SMTP:Default MBX-ESSEN-02
X-SourceIPAddress: 62.96.220.37
X-EndOfInjectedXHeaders: 19255
Received: from cas-essen-02.secunet.de (10.53.40.202) by
 mbx-essen-02.secunet.de (10.53.40.198) with Microsoft SMTP Server
 (version=3DTLS1_2, cipher=3DTLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Fri, 29 Mar 2024 21:47:02 +0100
Received: from b.mx.secunet.com (62.96.220.37) by cas-essen-02.secunet.de
 (10.53.40.202) with Microsoft SMTP Server (version=3DTLS1_2,
 cipher=3DTLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Fronte=
nd
 Transport; Fri, 29 Mar 2024 21:47:02 +0100
Received: from localhost (localhost [127.0.0.1])
	by b.mx.secunet.com (Postfix) with ESMTP id 05EC92032C
	for <steffen.klassert@secunet.com>; Fri, 29 Mar 2024 21:47:02 +0100 (CET)
X-Virus-Scanned: by secunet
X-Spam-Flag: NO
X-Spam-Score: -5.763
X-Spam-Level:
X-Spam-Status: No, score=3D-5.763 tagged_above=3D-999 required=3D2.1
	tests=3D[BAYES_00=3D-1.9, DKIMWL_WL_HIGH=3D-0.099, DKIM_SIGNED=3D0.1,
	DKIM_VALID=3D-0.1, DKIM_VALID_AU=3D-0.1,
	HEADER_FROM_DIFFERENT_DOMAINS=3D0.249, MAILING_LIST_MULTI=3D-1,
	NICE_REPLY_A=3D-2.913, RCVD_IN_DNSWL_NONE=3D-0.0001, SPF_HELO_NONE=3D0.001=
,
	SPF_PASS=3D-0.001] autolearn=3Dham autolearn_force=3Dno
Authentication-Results: a.mx.secunet.com (amavisd-new);
	dkim=3Dpass (2048-bit key) header.d=3Dintel.com
Received: from b.mx.secunet.com ([127.0.0.1])
	by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZvrqQk9JdDT for <steffen.klassert@secunet.com>;
	Fri, 29 Mar 2024 21:46:58 +0100 (CET)
Received-SPF: Pass (sender SPF authorized) identity=3Dmailfrom; client-ip=
=3D147.75.199.223; helo=3Dny.mirrors.kernel.org; envelope-from=3Dnetdev+bou=
nces-83460-steffen.klassert=3Dsecunet.com@vger.kernel.org; receiver=3Dsteff=
en.klassert@secunet.com=20
DKIM-Filter: OpenDKIM Filter v2.11.0 b.mx.secunet.com 4C5E420270
Authentication-Results: b.mx.secunet.com;
	dkim=3Dpass (2048-bit key) header.d=3Dintel.com header.i=3D@intel.com head=
er.b=3D"N7w9qkGK"
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223=
])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by b.mx.secunet.com (Postfix) with ESMTPS id 4C5E420270
	for <steffen.klassert@secunet.com>; Fri, 29 Mar 2024 21:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.2=
5.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 533441C20EDA
	for <steffen.klassert@secunet.com>; Fri, 29 Mar 2024 20:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6F258127;
	Fri, 29 Mar 2024 20:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=3Dpass (2048-bit key) header.d=3Dintel.com header.i=3D@intel.com head=
er.b=3D"N7w9qkGK"
X-Original-To: netdev@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA103BB2A
	for <netdev@vger.kernel.org>; Fri, 29 Mar 2024 20:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=3Dfail smtp.client-ip=
=3D198.175.65.16
ARC-Seal: i=3D2; a=3Drsa-sha256; d=3Dsubspace.kernel.org; s=3Darc-20240116;
	t=3D1711745212; cv=3Dfail; b=3DEPPgqq0/xVCZJIN8n8jxFRo2LU4hOL5RED3tgLYBNs5=
IviTRzHenveHox8DAIqGGYZGrab/mUHE4RbKGnuKr6Kkk3zUSL+W+VDWQ2frPHSLzMTW0pZd+qX=
dSQIPhowCVR38J2feSqqMvTxTtznYVhSuQkmemp9/YTKW/rS6STU8=3D
ARC-Message-Signature: i=3D2; a=3Drsa-sha256; d=3Dsubspace.kernel.org;
	s=3Darc-20240116; t=3D1711745212; c=3Drelaxed/simple;
	bh=3DT0W/vcVcQMWX87w1VyY2NuTB5lHo0SBiBl0eXikknTo=3D;
	h=3DMessage-ID:Date:Subject:To:CC:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=3Dihm8naKikxtjV14wGHvXLAfLrnHHBS0x7g19Yzo+lj=
ucn/OufFjEWGcxVcGZzZdXP0zJBfPXx51JcMGBbdvLbzCJoMs1Xo91z5ekuAzoMJXczJNpnMwVi=
YgfsstbEj/gjyDDFjEXy3wSNxWIbX5Qptk1TpNdSUKXo0ssEPpLkGU=3D
ARC-Authentication-Results: i=3D2; smtp.subspace.kernel.org; dmarc=3Dpass (=
p=3Dnone dis=3Dnone) header.from=3Dintel.com; spf=3Dpass smtp.mailfrom=3Din=
tel.com; dkim=3Dpass (2048-bit key) header.d=3Dintel.com header.i=3D@intel.=
com header.b=3DN7w9qkGK; arc=3Dfail smtp.client-ip=3D198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=3Dpass (p=3Dnone di=
s=3Dnone) header.from=3Dintel.com
Authentication-Results: smtp.subspace.kernel.org; spf=3Dpass smtp.mailfrom=
=3Dintel.com
DKIM-Signature: v=3D1; a=3Drsa-sha256; c=3Drelaxed/simple;
  d=3Dintel.com; i=3D@intel.com; q=3Ddns/txt; s=3DIntel;
  t=3D1711745211; x=3D1743281211;
  h=3Dmessage-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=3DT0W/vcVcQMWX87w1VyY2NuTB5lHo0SBiBl0eXikknTo=3D;
  b=3DN7w9qkGKbxGElbVR6cggyhMh1Uu08DXnri3RgTCzhXHFDcUvp4a8jBjY
   G2o3hwpMaXqaMSRRBssVFjyDPOZkRjrBE75I+mr2NOUxJCu/IJPgTxMTo
   KQBDTXQAoHB9xVhYoKVJ7mIpsjff30Qvofp4q5kuYfqu5B0T/Lggoicbv
   WcnaDw2DtNx8BX+8efPqvRLqg4sA68tHlTvgn1/cGoWhTH6BhCFCyIXmH
   vZHWmEiHa3K8Odae+057OJIQAxmkabaesbw1z2889A0uPAufCzLqCsYgY
   UVxP8Up77PYD/0dy99AvVMU7ERJDBL+J2GH9G8U5hhrR4Qsid58X5U8KF
   w=3D=3D;
X-CSE-ConnectionGUID: hF85gnBIRvqL0aqa14TKwQ=3D=3D
X-CSE-MsgGUID: M+6GhsIzScOUgzA8Wo5nDw=3D=3D
X-IronPort-AV: E=3DMcAfee;i=3D"6600,9927,11028"; a=3D"7062625"
X-IronPort-AV: E=3DSophos;i=3D"6.07,165,1708416000";=20
   d=3D"scan'208";a=3D"7062625"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29=
 Mar 2024 13:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=3DSophos;i=3D"6.07,165,1708416000";=20
   d=3D"scan'208";a=3D"17056286"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 29 Mar 2024 =
13:46:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=3DTLS1_2, cipher=3DTLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 13:46:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=3DTLS1_2, cipher=3DTLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 13:46:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169=
)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=3DTLS1_2, cipher=3DTLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 13:46:49 -0700
ARC-Seal: i=3D1; a=3Drsa-sha256; s=3Darcselector9901; d=3Dmicrosoft.com; cv=
=3Dnone;
 b=3DTOw77p6bDHulD1sUgk2apPvNvQqlPbVPNUvZeS+JWW4Pp3CBgVmxzUnLXgAFuhWtTYv/kV=
mT5pg8PJyTKaGycVEViXIkEugHGxeOOXFGqO1vapRpUT4Dj1vGwBmN/Yqe/W8Y18XXAKKyG0KNr=
FNebRQyymgH1txZy+PgjLwayQYCNKNuH+UGG01L6pynkCDDnfnh2yUiGRmYymmmqp/sXZy/ngTF=
5gxymAwuvI7i15gzxi7vk1kYfGO+cQQ5GbgK4DqrzlqE3E49ZvQHnkdr1Lqt44+75PEzhiVXv9k=
c8A6Fl2VrdiYXl1p2WZxjf33icDEEZIBMxkJevBzQZFwUMw=3D=3D
ARC-Message-Signature: i=3D1; a=3Drsa-sha256; c=3Drelaxed/relaxed; d=3Dmicr=
osoft.com;
 s=3Darcselector9901;
 h=3DFrom:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-A=
ntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Ex=
change-AntiSpam-MessageData-1;
 bh=3DCX2vHtBbI9qqg/q0TRV1qETrkmc07CDFL0CyPCDq3J0=3D;
 b=3DmGrMNqv4ysPSmgN7wEYqNcTNEc+pI7GcyR07j3ryYrqEXiRIQwyamSmabnE/RT6N6oIO/7=
QQec9dJ/XFd8iLkn2Eep5kro7b+x152dYLzPkEWSDnGjYPb5iwmGzlntyAK7gY7DOWDMg0gwwIW=
SpcilSl9XiZY5+exJUvd1YFG2DQkVSYpxKpjpNPH7281JVvR6A/nHEQeNcvCtViVEcWgzcUDrE6=
hcDHJ7+fSHRv+ghCWcDIWcKtB9ZdQXchcVzTwq09gqWsU500XVfd+TrohUI5W7BQPE3zf0nBIM9=
gvT6IImBoC1548VeFov+DF42opgsJc5gt+PjXZgf5sGIOtA=3D=3D
ARC-Authentication-Results: i=3D1; mx.microsoft.com 1; spf=3Dpass
 smtp.mailfrom=3Dintel.com; dmarc=3Dpass action=3Dnone header.from=3Dintel.=
com;
 dkim=3Dpass header.d=3Dintel.com; arc=3Dnone
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::=
9)
 by DS0PR11MB7190.namprd11.prod.outlook.com (2603:10b6:8:132::5) with
 Microsoft SMTP Server (version=3DTLS1_2,
 cipher=3DTLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.40; Fri, 29 =
Mar
 2024 20:46:47 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7409.031; Fri, 29 Mar 2=
024
 20:46:47 +0000
Message-ID: <ba809a2a-3850-27ab-5836-f6705150f0a4@intel.com>
Date: Fri, 29 Mar 2024 13:46:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100=
101
 Thunderbird/102.6.1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
	<intel-wired-lan@lists.osuosl.org>
CC: Jacob Keller <jacob.e.keller@intel.com>, <netdev@vger.kernel.org>,
	Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
 <20240327132543.15923-10-mateusz.polchlopek@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240327132543.15923-10-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset=3D"UTF-8"; format=3Dflowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
List-Id: <netdev.vger.kernel.org>
List-Subscribe: <mailto:netdev+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:netdev+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7190:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aQR7gzJpvGbGWdczuueAUgY27xwKkg8DeTNUHRsh=
yA2aJ/iufvOUrB6jU6Lmww/7ESr1N3BFc0+sGAdU1i8yWA1b1ggIEctXakPezyf6roOdskSUtpb=
dfMH5GznesFrqjiBCqK4lo/WtxhKxA/h+t/oemBxZ1m4tixQDVlcbPAV+bpweEL6Pht2paUox2Y=
uYZdJ63mLB+RVHsPQ66tz8x5hBjKd6R5LRsFxzfGY/m8d/7RBoA1KFetcsqPGHTE4VGpRz1r8px=
6jZFyXObHGKQfJnD2Cus7OdIUeAyyvJod2hGJwgKReJW9sDTu2iuS9YR06zqS6221E1cEcyhCGA=
U16thBDo1r2TZHH+YGLepE7A9YDOuZ1QG0Q7mAfysvjNYxQUHfucbAX+BPz+VRVqdnxm8Z4sXJY=
aWSFzcmNQ8DXMlpRziV3Q2iDtoJTdCTC7qFwODFsycNkK+M7qDeVZGE/ZFjCYgLjkNGsNSg5rvo=
rA1Ok8VtBeTWVZY2UGHH5kjbd+qd/QvgyYsqnzyjTPGbA5ESkTs47ObSDCy+vR0m3WuuRDoy18o=
6LgjJMpozSEYvlKYjApDc8W2RyHpSC1SYji5/Pd1F9EblK0MW2UDWJcRU9i1gv/XlfcPaR/wLYi=
9B8d9z6c5QegkNs5/alZ+w=3D=3D
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;I=
PV:NLI;SFV:NSPM;H:BL3PR11MB6435.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS=
:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =3D?utf-8?B?ZmJVZVMxZ0JSNDAwR0tEMms4W=
mhTNXMvSUlGM3RRWGdhQ0FSZHlLbUNINTJ0?=3D
 =3D?utf-8?B?QjdiU0NQMVFGRVlkOEFpbW5FWkM0dEYrMVVlT1NIRThtd3o4UWZlT1Zrd0g2?=
=3D
 =3D?utf-8?B?eGxUQ3NQby9zQzNqYmh2UU1HRzlXS1dsUDdjdkRENXNEM2xCTkdObEpXdHFz?=
=3D
 =3D?utf-8?B?aFNxSFpvY0hlakRUZFFaNktQaWl5R3V4QlREQjhwVnE3Slhkci82WlErcWdE?=
=3D
 =3D?utf-8?B?RW8yRUhqNWJwclBtWEt2YzZySEhadHdib0JEcGFHNUJKWDh4dFBhU044eE5J?=
=3D
 =3D?utf-8?B?ZFB2Q0VMUDFEM3d0T3VYSmJMTStLSDNJQkxWYW1oYmpJK1NMNzNmLy9pSGxl?=
=3D
 =3D?utf-8?B?WUFKQ1JQZWtrU1FNeExIMFJZU3FaMlo4ZHlUNkNxSGpZZk5QVFArUjRMQWRB?=
=3D
 =3D?utf-8?B?cm43c0hheFdXZ3FsZmt5ZUYySGN0MlAxblJwQ1lWQldkRlllZTgySzFZQ1Iw?=
=3D
 =3D?utf-8?B?MktsZ2pMbWFmRzNYV1k0cWdKNm9jTzVCZktqL3NBdjFqQmVDbUZVcDIwdWZQ?=
=3D
 =3D?utf-8?B?dEhTdWNvdjNpUlQrUEF4dEY2WC9wRGx5NVRqSEJFbU1BNTlGL2Q0TkpSRUpZ?=
=3D
 =3D?utf-8?B?c3grVlNxbGxNMDhqWWd3Mkg3bFlnTDJCVWpJNVo1QXJSTFd2QnF3WVVLeHJV?=
=3D
 =3D?utf-8?B?ZEg4YTZaYjlESmE3L3FGN2k3STNaV3FmbHhjT3o3NDRrMFJUbWFqelk3Y1FP?=
=3D
 =3D?utf-8?B?ZW9JVlM2YytIYWZJQXl0azlyZnNLUVRPT2o1Vm1VN0ZIY0dtYzd4RmdETGFr?=
=3D
 =3D?utf-8?B?djJzaUdnR0d5dG5TNmplayszM3p0RXEvMzJ4TmFYdEZzT2MyOU4rNjc3WnpN?=
=3D
 =3D?utf-8?B?dGZLNVZVSnBpQ21qTVhwdElCMFFxNE9GcTBuTFJ2dTB0cWpFRFB1U00yNXNz?=
=3D
 =3D?utf-8?B?TzJjM0dOZjU4aWhyNmRVKzM5WllibFBtdWFJcHNjVHdSSlhKR1VHckdtck9X?=
=3D
 =3D?utf-8?B?OUdIakk2blZ6dzViTDNaZVlJb2VTcUF6RXBtVVYxZ2poYit1VDRKb0w5TnFG?=
=3D
 =3D?utf-8?B?LzZDaTlBbnpzeGc4U3lSRnRnZURub2NNYno3Y2M0YzJ3M0pET3NxZU5mNnBD?=
=3D
 =3D?utf-8?B?cTUvSUh3cFJlbDRVUEJGN2Y2MUt4cGVITjZySFNWdXlsWHBtTEJaeHFBbGNo?=
=3D
 =3D?utf-8?B?aDNwMWhmMDgzL2xMUTdNclZzdjJLSVpYMzRzamdVM0c0bkpudlNGbTlKVmhs?=
=3D
 =3D?utf-8?B?TDZEd3gvZEo5ODZyM1o2Vm5XTE5BcDIwcmhzdVhTME83WFJaOG1TVVhOb0VU?=
=3D
 =3D?utf-8?B?bHpjSkFpNlF5YTRveHdDWmdXMHlOTnZSWFFlNnk0UjRTSVNTK2p5ZVdUVHl4?=
=3D
 =3D?utf-8?B?aERwRjdvYkFoOGNyVktEUUxWajJQWnUrU00wbzk2cTl0ZVBPSzh2a0ZCWkw3?=
=3D
 =3D?utf-8?B?czBFbUoxNjJpeTU1T3dML2dtMmdhd2l5QjB4T2dLYkE0YmJtdkJoSGdlcWdV?=
=3D
 =3D?utf-8?B?NlhodzZ4OFNsdjFUeHVtZnRjSElueVp6cktQeVB6ZFBDbi9JVW5kYXhFMEZL?=
=3D
 =3D?utf-8?B?T0JxemwxdE1ScmFuNU9JMXRuZ2trMmdZdXoxRTI5WW9aTlQvQjF5RXBwOHM5?=
=3D
 =3D?utf-8?B?RUhNMWl4aklVbndBYkNhZlVoem8wZWMxczluU3gydXZIdDdKQUVna2hqN3Vj?=
=3D
 =3D?utf-8?B?Tld2U0pGY0FYWnBqMW9ZcU15ajhWd1pPZ2I5VSswSVZYRW8xSFN6T29SY255?=
=3D
 =3D?utf-8?B?dXNRZVZhTTFCejJQNGJKWkFJazdGN1h5L3FSQldISUx6K0hkbUR3emUxUHIz?=
=3D
 =3D?utf-8?B?UUViNUtBTk1WaUNmYngxdEZMQytTdXdHczFGMlpWUTdQYkFwRk9Pb25mR05t?=
=3D
 =3D?utf-8?B?ZitaYlpZRFdleCt3cDkvRDRodCsrKzQzUUFJQytCeVNCWlFqNWZCOS8wdWk1?=
=3D
 =3D?utf-8?B?dGhrSEI2R3FEQ3FkYkVYMWc2SS85akwwV3FVbFRvcXpwSndhWk0yVXpaUk1W?=
=3D
 =3D?utf-8?B?MEdVSVk4Q29PUGl5TFBKOUV5SGllWW1hd0N5clhTZTQ1LzdNbzBiempKYkNy?=
=3D
 =3D?utf-8?B?UnFFTXFQWHZUeG9nNTdGSG5XZlFlRjhJYSttVWpKVUkxRDFHSnlWNFdTRGhq?=
=3D
 =3D?utf-8?B?WTNST0cvRFowcHhKZFM1T0RoZG5Oak51WDN2cWg5NEwyRDJEOEZFYzUvcGRD?=
=3D
 =3D?utf-8?B?TzRWbVVneWxodm5wZFpDc3BiUTJBRUJRUTBIYXhmc0YyMFVwY1FKVmdBQWNY?=
=3D
 =3D?utf-8?B?SXc9PQ=3D=3D?=3D
X-MS-Exchange-CrossTenant-Network-Message-Id: 05c0ce0d-669b-4350-f9cc-08dc5=
0315a0d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.c=
om
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 20:46:47.6218
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 42PuwosqQtAMyTcy9wYJ3OAdeZ4COj=
reAxG4pfD9oN7Sa/IJDQ9lwYU5Q7qepPoIElrYpoeP0FqpOWoLl726lzF8sCRUO5BJGjXOGP94J=
RM=3D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7190
Return-Path: netdev+bounces-83460-steffen.klassert=3Dsecunet.com@vger.kerne=
l.org
X-MS-Exchange-Organization-OriginalArrivalTime: 29 Mar 2024 20:47:02.0562
 (UTC)
X-MS-Exchange-Organization-Network-Message-Id: 2d8ac8b2-453d-4069-c8ac-08dc=
503162c6
X-MS-Exchange-Organization-OriginalClientIPAddress: 62.96.220.37
X-MS-Exchange-Organization-OriginalServerIPAddress: 10.53.40.202
X-MS-Exchange-Organization-Cross-Premises-Headers-Processed: cas-essen-02.s=
ecunet.de
X-MS-Exchange-Organization-OrderedPrecisionLatencyInProgress: LSRV=3Dmbx-es=
sen-02.secunet.de:TOTAL-HUB=3D41523.287|SMR=3D0.134(SMRDE=3D0.005|SMRC=3D0.=
129(SMRCL=3D0.103|X-SMRCR=3D0.128))|CAT=3D0.041(CATRESL=3D0.022
 (CATRESLP2R=3D0.018)|CATORES=3D0.017(CATRS=3D0.017(CATRS-Index Routing
 Agent=3D0.015)))|QDM=3D3205.885
 |SMSC=3D0.555(X-SMSDR=3D0.083)|SMS=3D5.943(SMSMBXD-INC=3D5.398)|QDM=3D8880=
.891|SMS=3D5.693(SMSMBXD-INC=3D5.264
 )|QDM=3D16239.372|SMSC=3D0.022|SMS=3D3.842(SMSMBXD-INC=3D3.830)|QDM=3D1317=
5.805|UNK=3D0.004|CAT=3D0.006
 (CATRESL=3D0.004(CATRESLP2R=3D0.002))|QDM=3D5.388|CAT=3D0.020(CATRESL=3D0.=
019(CATRESLP2R=3D0.001
 ));2024-03-30T08:19:05.361Z
X-MS-Exchange-Forest-ArrivalHubServer: mbx-essen-02.secunet.de
X-MS-Exchange-Organization-AuthSource: cas-essen-02.secunet.de
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-FromEntityHeader: Internet
X-MS-Exchange-Organization-OriginalSize: 15867
X-MS-Exchange-Organization-HygienePolicy: Standard
X-MS-Exchange-Organization-MessageLatency: SRV=3Dcas-essen-02.secunet.de:TO=
TAL-FE=3D0.016|SMR=3D0.009(SMRPI=3D0.006(SMRPI-FrontendProxyAgent=3D0.006))=
|SMS=3D0.008
X-MS-Exchange-Organization-Recipient-Limit-Verified: True
X-MS-Exchange-Organization-TotalRecipientCount: 1
X-MS-Exchange-Organization-Rules-Execution-History: 0b0cf904-14ac-4724-8bdf=
-482ee6223cf2%%%fd34672d-751c-45ae-a963-ed177fcabe23%%%d8080257-b0c3-47b4-b=
0db-23bc0c8ddb3c%%%95e591a2-5d7d-4afa-b1d0-7573d6c0a5d9%%%f7d0f6bc-4dcc-487=
6-8c5d-b3d6ddbb3d55%%%16355082-c50b-4214-9c7d-d39575f9f79b
X-MS-Exchange-Forest-RulesExecuted: mbx-essen-02
X-MS-Exchange-Organization-RulesExecuted: mbx-essen-02
X-MS-Exchange-Forest-IndexAgent-0: AQ0CZW4AAfUCAAAPAAADH4sIAAAAAAAEAJVSTW/a=
QBBdEoz5CP1Kem
 kvI+WQBAJOKEkohyo95hA1aqVekb1eYIVjI3tNSPuD+jf7do2BpCIV
 aGVm3755+2Zm/1S+hfTJ6Vw5nbNOly77nQv6entKt64SafKL7qKAj4
 NoKib0EEdK9OvVerXdbuu/L+TL4ZBarZFU5Dp+LGciTpxQKEeosYh1
 IEMlAke6s6H5DNQ8nrc5eduw9U0y9MWcvKvzbq/Le1dur9tu88+8O+
 xcXHi859H52dllt6uprVZrOzc6qdlsbmtqrQ9ETqNh7qYGGVI8H/Cx
 4JMkvQd4E/qSo6Mog5KJR3JI4wddk0F9cmkURT4ZunGzLrOdxOLSzB
 VkrmeJ7BNqoZ8/buhBEHdjQa4XpWrFgWDfqPI0jkWogkfyhAxHFAsu
 0BLIhz7dR5i3FH5e6DXc+SLhmfyCShqJ5VRFcV7J9VQ9TkUfJzzyoW
 W2sD6M4ntXyShcEnWtA0+qZEX+Pl9TfJ6k3Tcc4ydRQDnNIun/M4Hj
 RMUpVxmOflADn9OsjI2/RU4yGXgpXnkD7flfShrC1/J2bZsai+DE1L
 gwKcNAhuKZ140+NzipV+8C4SZoeBQeKUoRHWXCR/qNcBrKQCRtuo0w
 7zRxRyLBnOIoHY0xe4Qyoamr+LhedRM8jCBYPObm5gJXbcltm1kO8m
 E1zPZ0axUz96XI8hWcZDP+rX0xtsN2CwVWwWI7iIsFy2bMZhWblaus
 ZrH9IrN3WbHAdoAgKLOKxUpFZhV1ioUARy+eWkD22Ku9Qr3EWIm9ep
 FcefH0I+I3zILPMquBgABMfLEqrIrcor6uDtqeocH8JlqZvdtlFvDs
 yCS+zhBwcDUSjY23KM/WhBK2pi37FrMRgFNjB7m9EhDooGk19qHE7M
 x57raikQIra32sQ2zXZA91pSvPpfyoCtpSKj+1nkpZT6XK2Fo6AK79
 oFjLKACHN1OmbXROMp33RtbS/tHw4ww8yO8CuCjwL5dQZe3UBgAAAQ
 7OAVJldHJpZXZlck9wZXJhdG9yLDEwLDA7UmV0cmlldmVyT3BlcmF0
 b3IsMTEsMTtQb3N0RG9jUGFyc2VyT3BlcmF0b3IsMTAsMDtQb3N0RG
 9jUGFyc2VyT3BlcmF0b3IsMTEsMDtQb3N0V29yZEJyZWFrZXJEaWFn
 bm9zdGljT3BlcmF0b3IsMTAsMDtQb3N0V29yZEJyZWFrZXJEaWFnbm
 9zdGljT3BlcmF0b3IsMTEsMDtUcmFuc3BvcnRXcml0ZXJQcm9kdWNl ciwyMCw3
X-MS-Exchange-Forest-IndexAgent: 1 978
X-MS-Exchange-Forest-EmailMessageHash: E1D60970
X-MS-Exchange-Forest-Language: en
X-MS-Exchange-Organization-Processed-By-Journaling: Journal Agent
X-MS-Exchange-Organization-Transport-Properties: DeliveryPriority=3DLow
X-MS-Exchange-Organization-Prioritization: 2:RC:REDACTED-af51df60fd698f80b0=
64826f9ee192ca@secunet.com:49/10|SR
X-MS-Exchange-Organization-IncludeInSla: False:RecipientCountThresholdExcee=
ded

On 3/27/2024 6:25 AM, Mateusz Polchlopek wrote:

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/et=
hernet/intel/iavf/iavf_txrx.c
> index b71484c87a84..c9c4f255bc8b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

...

>   /**
> - * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
> + * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
>    * @vsi: the VSI we care about
>    * @skb: skb currently being received and modified
> - * @rx_desc: the receive descriptor
> + * @ptype: decoded ptype information
> + * @csum_bits: decoded Rx descriptor information
>    **/
> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
> -			     struct sk_buff *skb,
> -			     union iavf_rx_desc *rx_desc)
> +static inline void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *sk=
b,

Please don't use 'inline' in c files. More usages throughout this patch=20
as well.

> +				struct iavf_rx_ptype_decoded *ptype,
> +				struct iavf_rx_csum_decoded *csum_bits)
>   {

