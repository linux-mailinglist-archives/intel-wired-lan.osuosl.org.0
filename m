Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4D26E0026
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 22:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A90441E1E;
	Wed, 12 Apr 2023 20:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A90441E1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681332534;
	bh=lxNjq+/4ZpzV5ePiuVfD8GMVdY+F80FX3OIuIWuduuA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6aIDJPwlwaYWh1IK53QzlCSePjqV1cZjVeFIc4bWQDSpSYskIZRh9NPadRGIZK6Zr
	 MLxiVM7mWIfsvVzGTson540eCMEVVPJskPHZ7cjzy386ki/LNG5sJ3oMAUWiK0KUg0
	 z60aeE8SqhyKJ8/EBO5mOT5VqVNLWhAnuQtfy2egdqCj1dhl6Xeiexke6oyMx0qoz4
	 SfkkVSBLwF7WIguOXJL7d3gJY3VFEc5dQ7gje9CRSUmnAi9tW1FWmMkjPTpDtwL1Ia
	 DlCFHjMYO+wYdhxVyJtScfr5ui09qsYRg8HEcBxtyXnizGmZ4Jg+OsxVZx/A9tlOm5
	 izgbQElqEt91g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kvf2UUvWKSZd; Wed, 12 Apr 2023 20:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D83A341E16;
	Wed, 12 Apr 2023 20:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D83A341E16
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA7141BF403
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3056615BE
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3056615BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8dqsC7t2U35l for <intel-wired-lan@osuosl.org>;
 Wed, 12 Apr 2023 20:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 043666140E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 043666140E
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:48:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430306257"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="430306257"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 13:48:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="863458661"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="863458661"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Apr 2023 13:48:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 13:48:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 13:48:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 13:48:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjE+D/ZGCLO+uK2w65WXMcMg6DrXJanMvji9qUVkk9PBJPyo6kRWNMF8D4zFPXdD3cpD256PYR720zNBJp513NmHxDAifhUY48UrhM4r+wm35xaZ2EXNNZKLGIp9EzY5RRZn4y51zCSFbD/M6ITKmNmF+u3eXB2W1fGyIQhUP55PsHmL/W5zBW5U4Eij40SBLcU+6AJxCrEqKzyBsWFuXburcTG8mXsZFtP5xTmetJJTPmY9PGw5rmE1bm20zhcHomvUj/nmwTqAL77eb+tqJFJRKmPIvnsU7WfjP2gX/MvZ3gS8Maxvk3jkUEmjRo3K53OO50liiulOMIMit75JMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nwD3qBN5KvzdMxR5QZeinSHkAuC3yI+GkTY03iLSEgY=;
 b=OcK4V9lqvqLBAcn3RywGL6M47pxtyD6lQzi7p3UKCwMbLSqeHXshAfep0XcvuoSBa0F7p5GlQ8X/om3ElyhbQf2CKnt4DAbpCicYFQbG6d+167aybOMpVFFO5Gk4p9P1McDoVhA3anLChvWZBAW4M0yE7zot7TYggWUTqegwd+AOPPdjVvZ3k5xcxhuX/6lcNK2FPi048/IgNLyomyDUep0bSvjJAk+7c2QcmZ9bMvcHy0Zc+C7DZwPPsLktQdkDyy+G7azCXhWoIF7Ey0lcdC3IxwOZDHhXEop8lffhc3CsJqbU0fZB84AB9y9UHPu37Tt2vyIrf1QTUkTHvEujQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 12 Apr
 2023 20:48:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 20:48:43 +0000
Message-ID: <f6263ef1-3257-2269-6e0a-420db1c1c3d2@intel.com>
Date: Wed, 12 Apr 2023 13:48:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
 <168132893055.340624.16209448340644513469.stgit@firesoul>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <168132893055.340624.16209448340644513469.stgit@firesoul>
X-ClientProxiedBy: BYAPR02CA0058.namprd02.prod.outlook.com
 (2603:10b6:a03:54::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4878:EE_
X-MS-Office365-Filtering-Correlation-Id: bc9949d5-073e-4696-bba9-08db3b974dcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WRzllAU47M98RKaJZ0cJ0B3y3gfwtwm5eyrOKnsRSRmIDXjPU4BmIIDEaGJTVYShmUQGS5EvlibBsfxpd3KHICG6pjHdG3FF0nb3Xc9W6PyDAmh6vWwp8KYdIl44iNH9kGc8zwHzW4EDlVs+jt+iCBP6uwu8vH/Alnjx7Darl/10AuOwkP6i8I7LPLzPBDx0ZCrgtRc3w+TdGAbwnAF3daUxosP5OwlSFGhgOTmSAUhgvNAafIYLKbYDCZkIpjcPNFgfINyL1GmUudryGNQSNrNWao2/Q1Qa8SV/pPujTflpx2H2GLEb2a2x8eewjXyF9Uom86nLuOfVIdOpJaZ2KFRR/15grr0tfphIKoM2hX1UShHyDWW/5SY3KZ1r6QX1v7zSPYHdlo4t1RALFtgC0febImZwecVyB83i1DXT9tTxtb3JVUeO/euXttERoxqN5Ot2ICiW6A8h3zpf4mXWzg35ISGMCutb1n/SIAz3YZIZa+16hoA++d1VONKhu6lV2O2qRl+SwBO7kWeiJ69yv4XcZfQfMCrlnXXWuP9Z8f3F22oLvS56kSD0wtuPsHqNH8dBCfK9OH1aP9NvOhnJM6POiuh/1XXgHqSFnKPIyP4uRMS7X2qWbM0dJUdPGjH3/t7jJIxZGzjNd9clori0XA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199021)(31686004)(66574015)(6506007)(2616005)(83380400001)(478600001)(6486002)(6666004)(53546011)(26005)(186003)(6512007)(2906002)(4744005)(36756003)(316002)(5660300002)(38100700002)(66476007)(66556008)(66946007)(82960400001)(41300700001)(31696002)(8936002)(8676002)(6916009)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHNxMnArclVTR1Z0WDcrcUVMbEV3L1QxblBCT00zNDlGcWZyVDY2WmpwTGg0?=
 =?utf-8?B?MEVRemF0bVorVUlqTFpReDNCelZZWTlQcVhRdE5SbW1SMm1RT0paUEVFR1l3?=
 =?utf-8?B?S1R5Q05lSko4YnNBSktlS2VaQzZUY00zSWNEVlVaSWQ2MkxHVE1kSVJkVVdX?=
 =?utf-8?B?SHJNUGF2K3NmODhFVCtPVFpwNHpmRlBEd3JQY3B1YkU4RGRDbzNtVXNXQmZk?=
 =?utf-8?B?TWZyUEg5MGFrdzlzbHBld2dmZ0tQVGRzZFc2WHRnaHdjTFVhWmtvSFJYNUZK?=
 =?utf-8?B?MDgzME44VjZuWEw2K01HRExabXZUYWw0K1AvMm9aS05sOE5XVE9wbG9odk9a?=
 =?utf-8?B?MmxwN3QwUllSRURvVTU1aDIzbVZ4Nk5FaXVHUFgxeW1aL0ZpY2xGY0hUVGJ1?=
 =?utf-8?B?VXhNZUw4anFpVW1lYlF3RFQ0ZnNUTGorMStSMVdUK3JRbERjb2NnRXRKV3JB?=
 =?utf-8?B?K2hDQ2FSbERySXJjWXNEd0ZSVUVhODJUbVJpRml6cTdtbEhvTjgwN0RNektM?=
 =?utf-8?B?WnNmTnU4RTVYVld6UUlXNWVwSE84dkNWVmhJdDI4WEE0em9Tc3YrR1F5ZFVI?=
 =?utf-8?B?c1Q3TWpUS1E0ZmUwNFljT0d3WjZEQTdhN1dDVGIwa2crQ0FoRDY0NkFnRlQ2?=
 =?utf-8?B?cFFVUEM3WjVpalZwV080NmpUcFlWKzNPc2s3c2VhcEJkWVVmYlBPZmFjUmlJ?=
 =?utf-8?B?T0VVQTJwM1VIWVNSRDVCSEZ5ZWs3a21VVlpiQnl5a3ZaL0hiRWxsRE9kSW9R?=
 =?utf-8?B?eHlIV1R1TitQZnJNTllkZEdGUituNWk3MDRIL2hlM0VRbWdiM3NnQ1IwcnYw?=
 =?utf-8?B?ZU9oWGpmd0twSHRGcGhGRVJQandvRnZPZGh1Uk9GRGxqU2N2cFY0ZE1adGI3?=
 =?utf-8?B?N0JHZlNxWEJXZlFZem1waXAzdFNrUzVkVW5CRzIyRzl6bW4wSDFMV091NEhu?=
 =?utf-8?B?Y25FTkxSYndNZXpjWU94QWR5enI0RU92QXVlYUxlMzQ0ZjZXUE5PbEllSEg4?=
 =?utf-8?B?NTM4Q2ljNjdlTmExU0h6TmJXNDhuRkljU3VHdytmS1Y4TWZTUDNBUStibzJO?=
 =?utf-8?B?ZEpPSTV5dFg1RDQ2L2t1NE5GRFE3NFdmejU2cjJ0N2xMYmF0WGQ1TTh1N3g0?=
 =?utf-8?B?dUYrRkRTOFpHek1rL25Wb0RYMlFJMUFGKzg0N3ZFcHUwSlI0RjY2WENVVzFY?=
 =?utf-8?B?WndkclA5M3VuNk9nRTZZUTZwdFNFdStUS25KbEFtMVpRZTZGRmdxZXkvN0Ry?=
 =?utf-8?B?b1d6Y1ZxZFAycmMwYlg3Yi9uNHVPWFhYMXRWcGI5U0ZUSzRUTmxZWGdaQVVU?=
 =?utf-8?B?eTlwN0JXMUswcXY1Y2t5eXpQbVZwQUR6TlFmUWs4ZWF4eFpOVERLWm5CM1Ft?=
 =?utf-8?B?ajdqcnJWcEM5WVRTWVpCcE5TakE4Q2MzZUNXem8xSmphUGx4UzZ3aGxCM0h2?=
 =?utf-8?B?Y25JcGd6cTFTRHdndFhOTFV3UGxBMVhhZkRlQVBDM2swL3U1QnEyQmhyWi9X?=
 =?utf-8?B?MTFsc3ZKUFJWYW9TYzJBYkdocEFLREgvbmk0RHRjU2d1MmxaLzEvdFl5TGlT?=
 =?utf-8?B?YjRrQ2JtQTkwTzM3eTFEUFB3MzdDSXJleTArdXl5eGFkaGFFVWJNaFgzck0y?=
 =?utf-8?B?N0UzTWVzVHJlVHpuUUpEUVRzUk1oaUFTUktFT24xQnNiQ09tSmVQMkZWdm9m?=
 =?utf-8?B?dEpHeUFpTnZZWUoxaUVrbktxb3ZBMDVqQlpTL2FmZGRVa2IrQ2hLRjNqOTF6?=
 =?utf-8?B?KzhSOWdQd3ZaQ1RGTTRzVCtwdmw5bHB3NVBHQ2phN2l6MldMbEZrWHFMRzc1?=
 =?utf-8?B?Z0EzNlhBYVpsSnpQZ0d3Vk9mK0tlWGg3eitkSG5jNUlwRUZpTkI2bW1oSm9w?=
 =?utf-8?B?UGNpcVFnUVF4ZFEyVEJmclkxMnFraHhxUGVuMkZlN3oyU2dSakI4MlYzSjRw?=
 =?utf-8?B?OGlPcmFsWHEvbVRjcUxZRkVxT0l3R3hMb1hsZ21wbC81ejVuYzFFWU5MUCtn?=
 =?utf-8?B?Zk9BWk1FaytSWHdRYWFoMEV3ZWoxdktIclZkQm1JdVVOY0pBZzUraitpQ3pR?=
 =?utf-8?B?MFdrbWN3MjBBYTA5MTZDbG1vSVJUZHREeGZ6dHFTb1RYZVVEbFJMVGZaNTRG?=
 =?utf-8?B?ak80K0Qzb0NIUFZJU1pwRFBGTkpLS2RZcG5xaU54Y2tpSE1FQkdXUW9hd0JQ?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc9949d5-073e-4696-bba9-08db3b974dcf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 20:48:43.6506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYibAqgGzdoilULEF22aZWXInWcgQCktK4LWlTCz6eNzrJH+MJzFu70zQS51LlO2BFInMrxa5pEL7f08fz53cttzQxD5qpog7FJ7SuXh2CI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681332527; x=1712868527;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IxHs6FGunIbFbOIsOSDB2GeX1l0/6ugHYO8yLA82z4o=;
 b=KqPMuvkiS2OIdFjypeJAzmsgtEmXWl6Ms7/a7fCvncOsQ6PzeFJXtHwe
 rVw9+nmNT4zzUotuIQUJwzySyR/7FJX0cHDTxV/ohjwcuCr6NshOSMCQa
 cv9VHfbSxOQvmCEllku6y+NLhRAi+H3rjwGq5WFTIP15MSIi3oJM7H9hV
 zRHzr9gFtqkpzKuyo1W8g/u8DrRztGzRSUZ4VfyNWDNIfKoT4T7dvfnyR
 e9k3HqMrQzy1BV8ENdVycW7eZWIy0l9swE29ySTQiR32bdJ5/hcOPjUHE
 GWpA4pa8y6itJNqliVu33dYX09+wS2Jkwepnh2rU6xJo2rd4d6UYe7yIs
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KqPMuvki
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf V10 4/6] veth:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEyLzIwMjMgMTI6NDggUE0sIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4g
VXBkYXRlIEFQSSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcgZm9yIHhk
cCByc3MgaGFzaCB0eXBlLgo+IAo+IFRoZSB2ZXRoIGRyaXZlciBjdXJyZW50bHkgb25seSBzdXBw
b3J0IFhEUC1oaW50cyBiYXNlZCBvbiBTS0IgY29kZSBwYXRoLgo+IFRoZSBTS0IgaGF2ZSBsb3N0
IGluZm9ybWF0aW9uIGFib3V0IHRoZSBSU1MgaGFzaCB0eXBlLCBieSBjb21wcmVzc2luZwo+IHRo
ZSBpbmZvcm1hdGlvbiBkb3duIHRvIGEgc2luZ2xlIGJpdGZpZWxkIHNrYi0+bDRfaGFzaCwgdGhh
dCBvbmx5IGtub3dzCj4gaWYgdGhpcyB3YXMgYSBMNCBoYXNoIHZhbHVlLgo+IAo+IEluIHByZXBh
cmF0aW9uIGZvciB2ZXRoLCB0aGUgeGRwX3Jzc19oYXNoX3R5cGUgaGF2ZSBhbiBMNCBpbmRpY2F0
aW9uCj4gYml0IHRoYXQgYWxsb3cgdXMgdG8gcmV0dXJuIGEgbWVhbmluZ2Z1bCBMNCBpbmRpY2F0
aW9uIHdoZW4gd29ya2luZwo+IHdpdGggU0tCIGJhc2VkIHBhY2tldHMuCj4gCj4gRml4ZXM6IDMw
NjUzMWYwMjQ5ZiAoInZldGg6IFN1cHBvcnQgUlggWERQIG1ldGFkYXRhIikKPiBTaWduZWQtb2Zm
LWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KPiBBY2tlZC1i
eTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gQWNrZWQtYnk6
IFN0YW5pc2xhdiBGb21pY2hldiA8c2RmQGdvb2dsZS5jb20+Cj4gLS0tCgpSZXZpZXdlZC1ieTog
SmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
