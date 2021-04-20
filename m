Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DA2365D66
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Apr 2021 18:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E53140235;
	Tue, 20 Apr 2021 16:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXFw9HsLCVIE; Tue, 20 Apr 2021 16:33:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 693AB4024C;
	Tue, 20 Apr 2021 16:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3D31BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 16:33:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CCB240594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 16:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LI2e5RorgR19 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Apr 2021 16:33:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AF8D40597
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 16:33:40 +0000 (UTC)
IronPort-SDR: aELGziE4gap0Uwn0KVwez3pBfQdM/6p9sHP9TFl2+R7uHP8epJaKmeLgY5DxBpuQok9VNarQPT
 d6gS/zQx1uJw==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="175645944"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="175645944"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 09:33:37 -0700
IronPort-SDR: Jx2RZo3VgbU+te7KK1pgffz7vKiW6i/zGOCHFotkpiF8YqotQcVTMTJ2LSuZ+CbfsjgtiyL2wh
 Hr0NPcIzZ3LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="602542982"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2021 09:33:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 09:33:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 20 Apr 2021 09:33:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 20 Apr 2021 09:33:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QY7MSwypUpvSD2tEwrtTVT6sztX82wye+PJxdiUH2EO/6KLNqxahEPdI5pjSSAXjnrD4HlCjwTDjnH3XoxMBFcd0EunyQoUtXPsvoaL6MbA3b8DjdugiZbMXKumrvNiwjX5v72XexXsPTiO7HTHt7KZOfw8CtnTe6GEZNT95eedP1hpTVFSsX70joamVikCYIIj4zh0ryYAVNxdiy6wrBw/jZHVSHQhk6fWUBab/3Z242i2AQsrIyzrKWDMkGTOWWuj6xE9pz1oz+QXSPKCRAhCWga7GXwjcl8OpSb6krVXRCUI15hZE+FwaVqr8VDozW/Eetz0BbwmlpUUYglqxvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ISEsaMVdwZ5tRCaCWRhCUW26qI40I0TlgtXHc5TBb34=;
 b=T5K816DC32Ei4GjlxFr7mgAvvDLpiwZddDqI7vk2hKCy3q6Rm19eqdtH7kFhaFGoOzqon3DXqPPDqqUQCYUT4GAnEpAyJI/zMxCFUJ3bd2cmPj/elzvGymK+kK6iwSst1/fC5jtqAog1SuX4oW5rMlRIZs4/+iaiPtpPD2K1OBsm3W3/JgDEK79pRwbIALEQRJrNTZZowQSAim/7cnPZzP6FSAtfv9xwH2jgEpUI2NM6GSVRvNx6jjB6GTnbOcp5LvEoMRL7vDwTCwQ7X40i/PKKOVbp1DRRNDMSRXCOZMoiSP1NTo/G4kWlqDdpuPlQsCWGwybN+cSHTo4P+NQslg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ISEsaMVdwZ5tRCaCWRhCUW26qI40I0TlgtXHc5TBb34=;
 b=LnBD7M2OumBt1JVGDVh0AMh7slDpPTRopFUCspeeZVNV6m5VDys9T3DmlcMn/Tic3Mg8PG96+fubu3C9WXnzXq+cdI/bDI6LQpQqJaU7SMkGfP0tNHR8CRu8V35GJGk7XcG+f5aSixI5t4+/cHk+BNKhbfK+Dnts0OCnHKGhsUc=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Tue, 20 Apr
 2021 16:33:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 16:33:33 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org"
 <kuba@kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>
Thread-Topic: [PATCH net v2] igb: Fix XDP with PTP enabled
Thread-Index: AQHXNOz8Ysyd8zDcfUq68Ph4OaWuXKq9m/MA
Date: Tue, 20 Apr 2021 16:33:33 +0000
Message-ID: <c1eed5fe05a59f86ff868580e3ae89e251f498ec.camel@intel.com>
References: <20210419072332.7246-1-kurt@linutronix.de>
In-Reply-To: <20210419072332.7246-1-kurt@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17bec134-5a80-4cad-8c43-08d9041a0a31
x-ms-traffictypediagnostic: SA2PR11MB4812:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB48122CBE68B1F1EF34E80B81C6489@SA2PR11MB4812.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sPTJtR4CbpdRxvHK7mItP/Bvi0AvEra5AxQDx4YcmnRRdKovw5WEPtnVvPW8WrawWo5UAbD4jZc0Ows5LttA7Og9q4hAlDhvL7KPMPSOLSwladB/sn4UbJvWHPQ0IjA4quVbVxzJxIB9cWRQAEgqysYcPzCBHXfr53DkwyJdqVeBk2LOB6pBkCoIAkmJLiyxsT6pIXvtJdtewa0bGeIYYYnqRHUZ7bUz38DSpab6YRJ4rQVabWhiQqMLDDXWmcT5AFEMY4en40zWpXMPQ6OF9kPiTiE7UE7hdO3yZMnOTVZojNULljdZ1FFyEcL9OIm4IwS/UjSJetXyeVM3scfrneGEXbxfD7JITgZFvOi724zKAOQ50GsXTqEfF5msZv+SUM9k5TYYVW69xU8xegA6BVmKbhYjLWnUF+wz3rxOoh0R1TDHIzYnIaOYKAJfdtqJjzxkMUBgkCZr6dcyjppFalccbE3T/tE1Fn5St4BJ/S4IGm9LG33ii4yOQircWPK0/fbNzwYVDWB7RxFhx1mj9A/5xMM1wX2F5XfYXOFzdV+rxI2ugqdGvCxaQ031aJCMPjGTBCGdvLqAzyze6Crknz6oPS/MPB2zTXSDybBHehHt+aSckxT4LdN9scUJb6ppLCdlWURakdSsDr5KChPhrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(376002)(39860400002)(346002)(136003)(83380400001)(122000001)(38100700002)(71200400001)(8936002)(8676002)(316002)(5660300002)(7416002)(66476007)(76116006)(66946007)(6512007)(64756008)(66556008)(66446008)(91956017)(36756003)(2616005)(2906002)(6506007)(4326008)(26005)(478600001)(54906003)(110136005)(6486002)(186003)(86362001)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?M3Z0YlN4cmxPOFk5Z2ExYnBqUjZLZE1TMXJWNnZ5alUyczA0VS9jTW43Y25t?=
 =?utf-8?B?MEFHdEdqTHJGN0dmVVRtZDdXeXBUd1QzOWJiaFo2UENHOHkwTXd0SzIxekpT?=
 =?utf-8?B?bDlIWTJPSXBtZWNMeTZPdUVKVktRUGwwKzNLTkhtc2FwazdwU2JiWE45T0Fj?=
 =?utf-8?B?eUhuUVdIaDRReFU5MGE4Sm4wUys3aG5HZGUwOUVuQ3k1WWJGeXhwdFF6NlBR?=
 =?utf-8?B?bEtEUGtnRXZmeGVnMm5iN0hlcy9aZXZUNXRzT0hXclprbm83ZUYrSlZjeHBF?=
 =?utf-8?B?ZGpWWGh5NndrT1VsNzdsZGdpWE8wZVhtaUJSVVlhdkhrNHBqUHBOc2RSRWQ0?=
 =?utf-8?B?cE1vTXYxOTl0U1I5eGdsUEtDa0JpWmU3ZTRQNlUxRzd6Z0JHdkxZNEJVbHNN?=
 =?utf-8?B?TUUva3gva1d0MGEySmppMUtsQ01VUlBxbjY3Wm96dlBWYTVnQzI3RzhkRzlB?=
 =?utf-8?B?cXBiU0tvbjAxN3pDaFpXUTRCKzlaVWFvRllWZmhDbFhPbWhlcTliUVlWc1Zi?=
 =?utf-8?B?dXl4M2hSOEFseFdNLzRuMHJpNkxjbGFFZXNNUmVDVVRzYlNIb3ZCZkkyNSs0?=
 =?utf-8?B?alh1Y1hLVXorTThpTFRPdzlkU2RQZWtpZVVqRDd5Qy9TcGNaQmRUNVFkVVdr?=
 =?utf-8?B?MjF2U0h3Mkthck9WZHpiMlRTM2htRVkrSUhIODRiaSs3THg1MVhHSGlzRzF3?=
 =?utf-8?B?czMwVzJWenA2RWM4S04ySFhTSHc0WmQ1a0xxcTJPV3plSk1mc3BQWDk0R1lm?=
 =?utf-8?B?ZEl4cklwSzZ2REhZWTVzOFQyQ2JSRjBhN0xCYVR2Q3VVbzd3eHVjV0M2UjNo?=
 =?utf-8?B?QXB6eEZON3NZVTRIL2MxQlNoa2RiODNlN2Y2c0lHdDh4eWxrNE02L1Q2RnhV?=
 =?utf-8?B?dlZJRnY5aE9ETlpvQ2V3ajQ1T1VyTm1QMEJZY1VNaXc4cnluYUtwcWhINXh5?=
 =?utf-8?B?N1QzYTRHNG42SG42UHRIRzhwQVVVRVFiY3FsekVLTUpVUnFYMlhJTVUzeHkr?=
 =?utf-8?B?eGs3WkE3a1pMcDBYclZKVzJkaGplMHppMXlxOGlHY2VqbTBQNUpKaDN5S2gy?=
 =?utf-8?B?YXNQWkZEVHhLS1E2Y0pkSm9MQXlKUjYxZ1RFSWxOaGIxSDI0UG1QbHpvb3Fj?=
 =?utf-8?B?MDdZejFFdmgvRjJhTWxQSFg3YTFwZXBxd3FjZzRZc0x2ZW5yUWRmendkaWZB?=
 =?utf-8?B?N0pWVG53KzNMYlBYMTg3YzViTFpqbWJvSFlhcVFkL2VaL3Z0aUhoM2FEV1pQ?=
 =?utf-8?B?Tm5IbHBsdWtWZEZWeGNIbEZYQUxiRVk2VHcrbm9qUm1ZdFVnRnFENmRqeDQz?=
 =?utf-8?B?alZRUldaY3ZnOE04dFZBMGhZMkU3Qm1RLytuckxlWEROUVBwczZ0UU9UanVD?=
 =?utf-8?B?ekNEMmtVWXRxdXpJNnpQWjN1bGQxdGxmR1lubHpuUTQ2QXpGUlREbi9zbW5J?=
 =?utf-8?B?YkM2QXhwNkxNenV3MkxJaE1xSWNha1ljeEhVaEFwSllMaE5NOVhvLzVsUndR?=
 =?utf-8?B?bnRyK1hMblA0TFVtblJXalBET3NBNDlwa2FaRHAxdmdjOXM0ZlJMNU5MdGVh?=
 =?utf-8?B?bHliVCt0c0loeDQ1eGNXMWR3WHNUMEtsNDBPaHF6cTFPY0VnOWhseHdweXM2?=
 =?utf-8?B?RXYwQzJOOU5RMGx0U3ptNnRJdWc3eU1DMi9nMEtYQmpITDVLM1ZyNHhma1FH?=
 =?utf-8?B?VjNUUnRQVWdVVzFhcWJ6MldnaGFWbUhFejNZSnBkRW9sRkNMdFE2WkV2QWo5?=
 =?utf-8?B?bWJQa0NOVE9WSjJGdS9HSGp4VUZZR3JXQnhrbGFCQTFENDdobjJLbkxGaDg3?=
 =?utf-8?B?L0lnSzczTXFNbFNDTzMydz09?=
Content-ID: <48FD680615ACB842BC77063769F62FBA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17bec134-5a80-4cad-8c43-08d9041a0a31
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2021 16:33:33.5386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5/bW1zVosYn0N0ESosbdWp7A5ooBmKU2m/FeWSH4W25cGuKjaHbbuFsofhxxNfxsOo3BJE0PPdytXmkcfPC7g+Q7HvPiE3OqfyIziXTxZm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix XDP with PTP enabled
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
Cc: "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "ast@kernel.org" <ast@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-04-19 at 09:23 +0200, Kurt Kanzenbach wrote:
> When using native XDP with the igb driver, the XDP frame data doesn't
> point to
> the beginning of the packet. It's off by 16 bytes. Everything works
> as expected
> with XDP skb mode.
> 
> Actually these 16 bytes are used to store the packet timestamps.
> Therefore, pull
> the timestamp before executing any XDP operations and adjust all
> other code
> accordingly. The igc driver does it like that as well.
> 
> Tested with Intel i210 card and AF_XDP sockets.
> 
> Fixes: 9cbc948b5a20 ("igb: add XDP support")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---

<snip>

> @@ -8683,7 +8676,10 @@ static int igb_clean_rx_irq(struct
> igb_q_vector *q_vector, const int budget)
>  	while (likely(total_packets < budget)) {
>  		union e1000_adv_rx_desc *rx_desc;
>  		struct igb_rx_buffer *rx_buffer;
> +		ktime_t timestamp = 0;
> +		int pkt_offset = 0;
>  		unsigned int size;
> +		void *pktbuf;
>  
>  		/* return some buffers to hardware, one at a time is
> too slow */
>  		if (cleaned_count >= IGB_RX_BUFFER_WRITE) {
> @@ -8703,14 +8699,21 @@ static int igb_clean_rx_irq(struct
> igb_q_vector *q_vector, const int budget)
>  		dma_rmb();
>  
>  		rx_buffer = igb_get_rx_buffer(rx_ring, size,
> &rx_buf_pgcnt);
> +		pktbuf = page_address(rx_buffer->page) + rx_buffer-
> >page_offset;
> +
> +		/* pull rx packet timestamp if available */
> +		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))
> {
> +			timestamp = igb_ptp_rx_pktstamp(rx_ring-
> >q_vector,
> +							pktbuf);

The timestamp should be checked for failure and not adjust these values
if the timestamp was invalid.
 
> +			pkt_offset += IGB_TS_HDR_LEN;
> +			size -= IGB_TS_HDR_LEN;
> +		}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
