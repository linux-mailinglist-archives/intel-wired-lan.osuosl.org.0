Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D08B616FFB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 22:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4764416EA;
	Wed,  2 Nov 2022 21:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4764416EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667425261;
	bh=0ztLb3M5krhoFRA2NdM+ad43q6BxZTwZZlP6v1T6OdY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iHVZX/jtknThOba+Eeo7TDfSOjEW5qdNg/LZ39A0WEtd3ti82BcKOOXIjvBsRYcdm
	 CBRouUUC8EeIyVlYP3U1bOXnxXr5mBgXNdJKN5Yeg1MpvYy0/5gw/b8E+xEGL7GNBw
	 uXa94tV+H2Kb7b3wJTPBlRfGX0JGwk2plXjznQgn26yCKxRE/+/0UNPbQNlLRVkzjJ
	 uNckPTo+IiTNBMguGbizCy1SI6ykYFa8DokFxASYs838JflbyQxOXBc/b2jcpBdoCv
	 oJjFZ+wlGm74QSKi0ZVEzDZEPNzLHgRSBI76Ig5rqnJRfGvz20Nedu5y50h8i8fCJE
	 3gMDDZije9Apw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6kqiA9OxFDt; Wed,  2 Nov 2022 21:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A521416E5;
	Wed,  2 Nov 2022 21:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A521416E5
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BBC51BF2FA
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54A2E4014B
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54A2E4014B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huJnvdm9Dqmd for <intel-wired-lan@osuosl.org>;
 Wed,  2 Nov 2022 21:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FD4F400D0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0FD4F400D0
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:40:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308243934"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="308243934"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 14:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="665713131"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="665713131"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2022 14:40:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 14:40:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 14:40:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 14:40:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 14:40:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENfYXgtT4m77mNzpJUNRPKYDU0uQezqtcxl8fXx0Ljfc/BZFGLXZTLqe0rWadVe3rODByQjOC9fCc+lE+eOO35AxWe0nWkA8Aa5B8fMfxMMcYwF9tcpFTBK/kHhcXOd4t4fyTRvfbbUDCSKA5Q6TMNFoiVUZrurmonql3HH1a6/cdtrpUyqoqxloijuiSDqWKh3C0SUTng8iVW9TXwEmRd+qmsHWJSrk/3qESbEqo0xuXaG6XS7npRqsCM3MAHX9s1qyBGogh/mV84sfg8Oh9RsnmLAbdhVjvOhbPerMMI12wY888NU2DjjvAbRDm2JtIoxnXQYvABJIJYk62cMc8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajbJAIzJ3YSQJsZ1mMEzNQKTadPdo5vPiKhh7ZlpVlc=;
 b=OOSNYXn/s0m5G7wOunm3qAzfZoZg0qp02AEGyz1EVv8WIhQAeKRl0TMpEkfP4NhtBX+vMjfoldsUOjexLTHzO9auJcQUeJzbiXPF/oz9QpV/vgDd6Nybl1wac+D8fB9nWQa8U+aMEH69eJOd1QTBhZWBIzZgNMZmrdj41jiMc3EMJrvPg9HkKvghkyn8ZFCfx8wGepcDKgnkRWNoYThICZWSu2LXlriT9XZ4ia75CK9s77wktV5Rt64e4uAZWthULdBQpaypPWn0917cCAK4M4VsK96CSHb4TPpwK8LAMwj9axZNu/cLJ3peP4yyktJ0frVl9E9cjkdzkVFIlb51FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by IA1PR11MB6195.namprd11.prod.outlook.com (2603:10b6:208:3e9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Wed, 2 Nov
 2022 21:40:32 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::9933:80d3:4e4:c627]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::9933:80d3:4e4:c627%7]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 21:40:32 +0000
Message-ID: <8a1dfa75-d164-e9a4-36c4-4f57b68fc055@intel.com>
Date: Wed, 2 Nov 2022 14:40:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: BY5PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::40) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3224:EE_|IA1PR11MB6195:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fbaf368-7e18-4470-28ee-08dabd1ade11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bupDfYjf7WENchZsjRiCp1ITJRkc7jqgm6n0P1TjSpxKljPsHMeywryID3bmmuXSGfWrvoExXNtAD+UvKEjaO5QXgRLLWekJnpHDdLLtpSfpDLWE0u91L5ICfsdvhYE0/rqEsXJNbQV85Ta/N2sWvgrwws7TJHOQ/BuOdf2EOozShjWDDgEO0oDDUTf/ePa9WU8lgpHP/YMHx7PLCOWcEAssH+dsroWnq10E9uf7AuBV06VGXfwqQOR5ZMaCFDKteaaFolMJ3QEetePa4ihJWTag6UzBXWCD4kBL6TSYJ0d3NS2UWWBfP+gmEvbUWrPcJPvBlLeNf1zXBLDa05PW119RO8sSaUTmcPnmTBvha8jbeXOw5xHNnbAwZq1GfkBPPAlm1to7ann6Ynf8rH0+mTHzEwDIPmzzeliDPpEDCPgqlMxZZ4bYVPKh/b9Lw52a28LwJVZPpJln+hmWjZcE1B3st8BEmo3rkOUfyi/X6l9nDGWrTG5g/THJgXvLBmObqkivCWKaID+glYea4ZNs7pu+64uNGIU+7opgLC67tpLgP/THNlZb9yy9x/bNrGIGU5kOCijvWzoug66nf+s88v+t0j5hslJrda1buKfZs58X7qxknyTj8pc3Ptzk//sNfZ9wbRT0Gs7PEmei2AA5gaws61VFlkW0+wbiIl8DKvRU3vjGpaIP00bm2r9/aVtasURW8rus3ks+QZkcP43V/JqNUIe+GE49iZzeHpBLbTzhF4cOPNMN/YwhXIvRzGVevZXBbiQ7/ByX34VuHrvZIMxNfDPsZKiE8N5lhmSk2kA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199015)(8676002)(316002)(6486002)(66946007)(66476007)(66556008)(4326008)(478600001)(31686004)(36756003)(186003)(31696002)(86362001)(4744005)(82960400001)(41300700001)(8936002)(5660300002)(2906002)(2616005)(53546011)(107886003)(26005)(6512007)(6506007)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWxPdy9HeEMvTGYyT3BZMlRXSlBjNmpsY3dhWnl6RFZOZDNhNEhaM21JbzJi?=
 =?utf-8?B?bE9IbWY4UCtOVjQ4UmtCRjVYcFR6OFg2UzNtL0wxYldpVTFzRkZSNnBmUWpw?=
 =?utf-8?B?L1BhMzlrWERiaVZ0QVhYeitkNitZSDhkZWE1aWNYL1RkMVZqcnhlZzhUQWFn?=
 =?utf-8?B?em9BdisrZWNyR00xejlLeWFMUWQrVHJ2MTFDVGNyL0dLOXRPdjdpR0FHNW16?=
 =?utf-8?B?czVlRnZieWgwVWJoQjRSUFJ2UFlKM0ZuYVRKTDQ1ZUxEVFNyeitNRnc2Zksz?=
 =?utf-8?B?WHo5VUFoc2tWRTNMM0JmUVBEZUNnTmEzQUwrcU9CV3MzVjFkYU02ckJoNmlY?=
 =?utf-8?B?YlBpV1lmQUFwLzM4cVA4dUpqT1pJK1hOb1pTYUQrWFBKNnE4SStSdlMzZGk0?=
 =?utf-8?B?cEVRYzA0K2FyKzh5VHpxS0Mxc3dJMnZlWExBL2Rjc2FmcU5IL3lOb3ltYjZq?=
 =?utf-8?B?eGFaT016ZmtvTmJhZXA3TzZHdXQzWWllYmRadnROVU15d2ZGVzVmS0d0citm?=
 =?utf-8?B?dW1EZkZVNUxqb2tqbnY1REpQUEp5NzE1eEZDOWM2blowczAzZjF1cDROTGZC?=
 =?utf-8?B?dWdkZmk1azd2dzRIMzJ0Z21BM3NOY2RuUE12WkwzbjAybnRQblBJcHVIK3hu?=
 =?utf-8?B?WEVuSlIxclJLSllmUVpwZEhHVHd5OURXNGt2UG9pTGtLU09YNGZveHJFZXRS?=
 =?utf-8?B?eHVnZzFVblpmY1VSR0llSGRnV08wR25iK09LUktiblNVVWdPZXdsWERYdkRm?=
 =?utf-8?B?K0N0MnhuSFVFeTBYTnlIUUVyQkttUUJ1SVJMazNFSTZvYnhGaXBrNXpLZHNj?=
 =?utf-8?B?QmUvNG5OQjhkQ1NiMzE2WXNzazJoOEVOcCtHSjZ4UStWWnp2cncyZWY2V3Jn?=
 =?utf-8?B?Yk11YjNNRnBEbDRXc2RqTzkxTzA2YmVWZ1c0ZmcrQUg2MlBJSEpqZ1BGTEFu?=
 =?utf-8?B?aU1laHYyaTMvbStHY2VvN3d5Skd1L21VWjRJUnNQa0FBNVJJWnlhd0hPWXM1?=
 =?utf-8?B?SmYrRUFhUHlWVTRXTHhvVnhaOWgvMFFEOEdraGgxVHVrQVA4TGl6aUVMVjcy?=
 =?utf-8?B?cmIwWjRtcWl6bXozU0VRTmM3OFNDRDRKSnMyT0ljTE5WMkNrbWZsNEt4dXBX?=
 =?utf-8?B?MVJkazRyMHA4NWNyTVYrK1g2Y0l6UWRBVW5KaW9JQ3ZWZFZ5cnFCdmF2Ni94?=
 =?utf-8?B?Y1JjSG9wQ2xsN3h1VnJGYmRENk81WnFQajhOYlo2NElmbjBSNkRhYVliSmZT?=
 =?utf-8?B?YVI2dzl4NjRCQkd3bUNlYTVTWkxWRTZYbnp3bXArY2F4VGZWVEpIcVpySHlD?=
 =?utf-8?B?Z09KTkdERkNUZDNsUTVnaVFieHN2Z2lDR3R1NmFXTjZxYndDZnJHTEpkNFAw?=
 =?utf-8?B?dUJEOVFPWGVtVGYxK0t5THFXaHZPSXFGWUxudU9GaVllWFZZbkJDa09Henpt?=
 =?utf-8?B?VHAvVTRBUXlteWszdlEzc0VNZ0R1SHJ6NDE3ZE9aMmZjY1pmck5UWVpTUHB4?=
 =?utf-8?B?N2JQWVhWcGNxUjM0MGlKT015YmNNYzJnSGdyWnBVVmVKWnMwVnRBNlRRUi90?=
 =?utf-8?B?bEp0R0F1dFNJeXFMQjd1ZkJBTm1HWGdZa3VsRWJlY0txNURQZDRnMjNNNVM2?=
 =?utf-8?B?SDhSeUJEeDM3ZzVMa3BSZmFISzhtK3g5WU4xRGh3aTM4bTNjVEJoUDh3RE51?=
 =?utf-8?B?dEUvcXhjYlN0d3QzdWlDMjZvVVN2WmRmRitXWFhqNlIrY1ZpT2s0S0EyZmlh?=
 =?utf-8?B?bWZiTXNnekJzcHV1WGo4bU5qaExIWmk0NFFydEVDUWZEbjZ4QzU0NG41U1pZ?=
 =?utf-8?B?YlZkWU0wNTRDdkdjSVh0R29abFBrN0MxYWh6MW5zNG1aMVpVN2RSS2lnY3U3?=
 =?utf-8?B?Q2QrcTR5cS84UkFVbnBCaUVHRERxZUw4cXE2MDIvVEQrWXRFb0ZuYVlFTVJv?=
 =?utf-8?B?bmhPWlhZS2swTnNYR3V5Ull1dER6bU5BdzllYm85SWlkeVpVclNubFdDL0E3?=
 =?utf-8?B?NUpwNUQ0NUIwaXhiVDY5SDFGRG95ZDcvV2pyMWxRZ1RZaVpEY1Q4bHNQNmpU?=
 =?utf-8?B?blJBVFFHRURhVUVoQ2ZPWE5lRnAwcmcyL3VFWTlNZzBob1FIWDFXR0FVUHJB?=
 =?utf-8?B?UXBZWnRzZ245dmJvWTd5RkdWcVd5djB5V2hGVnBWK0xYQXZGQ3kreFEyNWtB?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fbaf368-7e18-4470-28ee-08dabd1ade11
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 21:40:32.0374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E5+2q4pzidWvhAH+qUUAVqfKwJU4kK7ytvA0HkO+yfRCrzXjcNrHe5aXaXfWx8QpBM7MmNRj9LDSDqI24Dn2txObjHc03M/gBFKgZ1X5vcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6195
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667425253; x=1698961253;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ilHA/WW8T5Y0ys6KGGk5/mX99voOCXGdo/wbo9pG6Wc=;
 b=isZDeARNIentiquhQk4wh/3lmYmd7pehQ6Qx0qmEpKiVNl5+Ibxzho2+
 HiOfIAagHmBPL0RGp8IkziKzgV6gwiz2plCXte2PHO+L9kIrk15E2Gj7n
 4gJtgY8YnzWjv1is8mcNIOtztgL2STUIG70fTst5C7LZbBNIO25Rfi7MI
 CLyXY5yg+5j1vipc1kYhQ5GYAX7qDF2oUSvkkfQhbGlnmN8acQpxZLvjY
 us6OzA4zoLfztbtzrTCoXoVl3M1VM7Asy7YqiYml3CETfmiuQeXiHLAus
 VuFJ9A+uBy4cNyLUEK4QPj7KyBgndMwOEhmow/rxO8Hzan7kTgiRdpeoj
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=isZDeARN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
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
Cc: pmenzel@molgen.mpg.de, mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/25/2022 7:03 AM, Muhammad Husaini Zulkifli wrote:

One more that I missed...

> +static inline bool igc_ipv6_csum_is_sctp(struct sk_buff *skb)
> +{

No 'inline' in c files.

> +	unsigned int offset = 0;
> 
> -		skb_txtime_consumed(first->skb);
> -		context_desc->launch_time = igc_tx_launchtime(adapter,
> -							      txtime);
> -	} else {
> -		context_desc->launch_time = 0;
> -	}
> +	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
> +
> +	return offset == skb_checksum_start_offset(skb);
>   }
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
