Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2933B0F92
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 23:40:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB95D401EF;
	Tue, 22 Jun 2021 21:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFt4s6dXRqpc; Tue, 22 Jun 2021 21:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8319401DB;
	Tue, 22 Jun 2021 21:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91C4C1BF336
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 21:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 800B3401DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 21:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7aa9KdDLV46M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 21:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F9BC400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 21:39:53 +0000 (UTC)
IronPort-SDR: 6Rgb/qdAz93fkmMPg4i/bOuyX+JE2ck0otPrlRMv0QtDqO+1zgZGcC2JU1P3s0Xll2FoBI9Eta
 UKzequWmCu3A==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="206964315"
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="206964315"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 14:39:49 -0700
IronPort-SDR: I4d/K3jUVmLXJUBVXUP5zW7VZtv/fHqIdpQNKvQ3Sbb50z8Io4uPx7uRZcdFred8AMpAPIHcAD
 1ePpij3+n15A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="406099153"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 22 Jun 2021 14:39:47 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 14:39:46 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 14:39:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 22 Jun 2021 14:39:46 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 22 Jun 2021 14:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sb5o21T9u/ndsCiHsb62p7U4OIt8pYVlS2qbzVHXH4KO7CQxnF9ds55oXphG8Kj+lP3j6MK4OW+v+Furtzm09axGdlmjYoIpBlMhFwugGhdhKY06wM9esuKgIsEu07CjdZfFDiC+/4Cnmzn7otGSiMqCj9pcBLh32sGJkeMLVVIKqEvy8aAqsadc0NTxJTj7fsLfjmCN0G37Ykm52uUwreLAUyCbd5b4QBtKAfzB3McftA3k3Zvxn6fEbfN0WMFy80XUMvVPTfx8yT9wG+HF6s49pwz2BoO4myDoE9bZ/APPnG+6vk8fq+IgRL0+q+qRM1ew1mZXyy2X95ekMA2lqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEOiWqkprZObL0BqhcFVvyshxxEeGFbo0qkLDPgPoLE=;
 b=QbE62xQgn5W/ohis5kbbbvif8AxCaHrncV2re0ZzIvO1GUGnZEbKmmzaphn1+WQxi4iwvZOPnXRvw+JQmbCp5iAs+fp6a+/GEWuQSZy0lakP2zLFE91H9lMMAWzqdtajaFx+oMRzhEwF4B3Ua2BmE7vbIWv8IpZxEhs4BbmZdIARxrsfvglJr8FSOuf7q9iXoU7gqK3lpzTcyUBQpUMCO71zMHBTQBHM5bE4sFadL0oEDY2SSIdRkmzXHRXIvdkX3Fxr+HDTdPNyYcdC0rxY9DnpB4Jo3b4qFE+3PNvzOcp7XQozQVy8N2zwNJbWoz69XYqtLLmhwwUj44EnZaqxqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEOiWqkprZObL0BqhcFVvyshxxEeGFbo0qkLDPgPoLE=;
 b=JeiXZrhVP2G9nsAswp9gA0DYO1CLXkSAZFtRUF30x+GqSTYzuYk5QT+uAy7AFcFoK7htqO6ie+DV89ef0eRIROa7tB5grmUMJgK91IxeYbJ2VAGtIE8/9ze28MePNPr1PW0RhgEJBUkYPk6uyp3diaVqJkZtr34uhLwAUDm94xk=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Tue, 22 Jun
 2021 21:39:44 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4264.018; Tue, 22 Jun 2021
 21:39:44 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH next-queue v1 2/5] igc: Integrate flex filter into
 ethtool ops
Thread-Index: AQHXXlphKb+FaIhQcE6mibnLMYPEsKsgolAA
Date: Tue, 22 Jun 2021 21:39:44 +0000
Message-ID: <a9c671aa107bb1436b924dd91e802ff642591468.camel@intel.com>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-3-vinicius.gomes@intel.com>
In-Reply-To: <20210611003924.492853-3-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6033a12-3a03-4493-4859-08d935c63ffa
x-ms-traffictypediagnostic: SA2PR11MB4859:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4859EAE9F54BD63F2979F9D8C6099@SA2PR11MB4859.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JAyXsAj+jiqIa+tezjvrPAsda/0PnD7Z/ThxfAbrjMlQ8n4vvthVAPTrXrOQWWnOralVEQ8K/1n4WkUQXR55vCpkOzEwUNfiFBfqP6QYzpBSHM4EjkKkyLw3OG8JNzXCOsWtamUnJNubtuAF94vPfejjMem8GpXq0vLo2Fh9ZqFklVyXJZLXEbZZ8Qle/lcfD+9m17pS7fjRORSDmR4HoMD/J/wdN3qyUBWf6MEhGquFs+UhAPN1nBU7UxnSgn4h3Tfh03/iJSBMvOqTMmaaLQFvt+DaJC+HaoWSrP51FFPqyBcTxzFn/hi4KXNx9UcKhq2rPB2ZaO3IfzYPVZ+GE4A/zcxnLRLXY7vArKxRznANPNtC4AAMZg0rhHUwouAl4p2Hr1f9XrdMSCdDOznj5vRX38n4ZudCzagY+ZVhihpgvWmfhWiQo0NyOXxCnDgT3P86w8I+TGc4EH3CCoH7LvP5PfE4s5cmfM5ANvgqW/nqDJ3Ot3HGoKKp/Lezi+qSNtzF6Inq2nOl5fYQBzDnUJlgpIVzCIBxtpVJT6ywf0sqFLL5aB5g6DbnuVj+SngKjUkzwwp/uPguypzVv2RpTvtn6oTeqMsslGmU9bn1zG0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(376002)(39860400002)(136003)(366004)(36756003)(2906002)(122000001)(8936002)(4326008)(76116006)(91956017)(66946007)(71200400001)(6512007)(8676002)(38100700002)(83380400001)(6486002)(316002)(110136005)(66446008)(478600001)(5660300002)(86362001)(2616005)(66476007)(66556008)(64756008)(26005)(186003)(6506007)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjV5dmh2UEFSZ1BEWkQrQ0pHNFRxNlFoVG05VHJwVzhUQkdYQmhncGdHUGoz?=
 =?utf-8?B?dWhEQUxlQ1dzdTNBTnNQVVJ4TFVNQkxNbTdaRituV2xZMkxOUGVKK2MyclRL?=
 =?utf-8?B?ZGdCVmhWNTljclg1WFFGVlVDUDYwRlBSeDRJbFMwQ3ZieFE2TWNhNGtIS0JC?=
 =?utf-8?B?QkU5Y2VldGgyU1gxSjdPdHoxZFdiQldWOEdOY3U4eWRpa3oyMmltN3o0K3Fv?=
 =?utf-8?B?U0JDOEhrazJ2M3JGTlNlRnBjSFc5TTZPMVBlY05CcDY1OXA3QUdwRWtqMjJQ?=
 =?utf-8?B?UkpRS2NxN01GVThraFM2czlxaXFtaGlpMUdBRS9RdlRJdWFPOGRxVUhzWjI4?=
 =?utf-8?B?dmdyOUdrOFdRYXZXUTM4SXJzODl3MGhjeS85ZjFjSW4xUzQrcHd1Tng2ZkZK?=
 =?utf-8?B?MFEvOXJPZHE4N2dqMTF1MW0wSUMva25ES0I1aWRmN0l6VERwbUhpeTF3Rm8z?=
 =?utf-8?B?dm1GZVBacUp0RlBCYXlNbFp6UG9JUE45eHlEcFVnTTB6aVNVdEFEa1AyWnIv?=
 =?utf-8?B?RldiSUlZclRLdVVOY01FNEZRZkVFSlkvSlJvR1VwNmVqK0o2T2tSck96ODlE?=
 =?utf-8?B?ZlhjYnN4cXpkdmFjTFBvQTVXQTNnQ0M1T3Z5VDNiZXdJQmh5c0lweXBSSzU1?=
 =?utf-8?B?NG16cVVHdzB4SDkxQm83TmtZVk93TUhBWFRwTUp0Q2c3aytmeU5QQnZiTGk1?=
 =?utf-8?B?VnhCa3Z1L0dNMDNrTk5FNkNtV1VSTFh4M2Z2UzlCSEtoTjJ2MGpST3JQODNW?=
 =?utf-8?B?REhyNDdreGVCOHhQYXpyaVcrQUlqc1J5eE9tY29sMlRqbllJQWxFc29SVDYw?=
 =?utf-8?B?Wi9nQ09zMUdnL3lLMHJ5QXJmckVGZXpDMGNqMzJnODRzWS8rTEFqZG9PUlRU?=
 =?utf-8?B?Y3ZBVHVpNDhuS29KSzFHTWNLeEx0VzkvczlNd24zRk52d0tUQnVKb0RuK0xh?=
 =?utf-8?B?NlhGa21hZHByM0Z4Sk9USTRKcWYwd05aVnd1RmRLUHd1eFdNSGpzSlBiNWZN?=
 =?utf-8?B?QnZNT0pCSEJVRzFPVThUUEsrckloUFRTdlVjeGVsOGJpRm1ZOWpqOUoycEFi?=
 =?utf-8?B?NlYzemdwbUM0MVpqR2RIZmpVUTlTMWFJK2d6K2hiS3VMSzlGa0R2MnpPWEdw?=
 =?utf-8?B?MmxrRmhIa01kY1JlMjhxVlI4czRqeU1nVWlBYXpmalBWR3ZTZEFERnQ2SWlX?=
 =?utf-8?B?MVRQV0ZyT2VwWjdVK3dyMEhoTithWlRHLzdsOGkwVnJtZkpsNWVQL1QvOUpn?=
 =?utf-8?B?YzUzWUh3Q3dnWkU4TXNBTjY0UkZxMXlGeEtCNVB3MmdzdHNqY2NlTU1JK3Na?=
 =?utf-8?B?SnZiWk93OTZJbnJCVVNaSEltMDMzWG9raXRqMHY1NDdNZ21US1R3N3RReU1Z?=
 =?utf-8?B?SHJPdHlvVVdiakcyMHBLR1hnUjFoWkhrNE9YNkc1T1hteWs4ODdNTHJlYnB6?=
 =?utf-8?B?ZHJMSTdRKzlkVXVmQ000MGhxWm1RZlpPK0dnanpMNFc0NEFkeVNOdXh6SGo5?=
 =?utf-8?B?ZkptUWJNU2FUZk1ZQ3lCU3h3KzZNU283ekpLTXBNWkN3eFk4VUdIdmN0RSto?=
 =?utf-8?B?N0FTYzNVbndDcWtXTm1PZ2pzWWZ6QVlOUmE1QVJJZTlzNVovcWZJTnFVcXdX?=
 =?utf-8?B?WjBWZFgwSjR1ZXg2WkptSDNoSW9HZnBNSzJKNjdNNVlneE5uSXlFR0NsWHpz?=
 =?utf-8?B?MGVnYUNIS3ZlQ3FseUFtT3VPWUhrbkhSaURaaDA2am9rZkpjNlJKQ0gzNDB0?=
 =?utf-8?B?UTZTMWJqUS9hdkhlc0RzUjhwb0tZNEFHWlMya0t4SDJPUWhRSWNtMXA2YzJj?=
 =?utf-8?B?c1J2SkVLRGNzQTY4UTBtZz09?=
Content-ID: <71C8D4B241060341ACC6E76C0BFD17A9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6033a12-3a03-4493-4859-08d935c63ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2021 21:39:44.1820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2GOZmWPqXtsYyGSweO6chM92d2lxB8B82VqK3zEVFwWOEU4+++Kf6LK8juqHDFVCc7HVfir2sYmoQzUOATCkEpli9iKLUpMeK0p/pGsJTZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/5] igc: Integrate flex
 filter into ethtool ops
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
Cc: "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "kurt@linutronix.de" <kurt@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-06-10 at 17:39 -0700, Vinicius Costa Gomes wrote:
> From: Kurt Kanzenbach <kurt@linutronix.de>
> 
> Use the flex filter mechanism to extend the current ethtool filter
> operations by intercoperating the user data. This allows to match
> eight more bytes within a Ethernet frame in addition to macs, ether
> types and vlan.
> 
> The matching pattern looks like this:
> 
>  * dest_mac [6]
>  * src_mac [6]
>  * tpid [2]
>  * vlan tci [2]
>  * ether type [2]
>  * user data [8]
> 
> This can be used to match Profinet traffic classes by FrameID range.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---

I was preparing these patches for a pull request and came across a
couple warnings. Could you address them before I send these on?

<snip>

> @@ -1215,6 +1221,20 @@ static void igc_ethtool_init_nfc_rule(struct
> igc_nfc_rule *rule,
>  		ether_addr_copy(rule->filter.dst_addr,
>  				fsp->h_u.ether_spec.h_dest);
>  	}
> +
> +	/* Check for user defined data */
> +	if ((fsp->flow_type & FLOW_EXT) &&
> +	    (fsp->h_ext.data[0] || fsp->h_ext.data[1])) {
> +		rule->filter.match_flags |= IGC_FILTER_FLAG_USER_DATA;
> +		memcpy(rule->filter.user_data, fsp->h_ext.data,
> sizeof(fsp->h_ext.data));
> +		memcpy(rule->filter.user_mask, fsp->m_ext.data,
> sizeof(fsp->m_ext.data));
> +
> +		/* VLAN etype matching is only valid using flex filter
> */
> +		if ((fsp->flow_type & FLOW_EXT) && fsp-
> >h_ext.vlan_etype) {
> +			rule->filter.vlan_etype = fsp-
> >h_ext.vlan_etype;
> +			rule->filter.match_flags |=
> IGC_FILTER_FLAG_VLAN_ETYPE;

drivers/net/ethernet/intel/igc/igc_ethtool.c:1234:49: warning:
incorrect type in assignment (different base types)
drivers/net/ethernet/intel/igc/igc_ethtool.c:1234:49:    expected
unsigned short [usertype] vlan_etype
drivers/net/ethernet/intel/igc/igc_ethtool.c:1234:49:    got restricted
__be16 const [usertype] vlan_etype

<snip>

> +static int igc_add_flex_filter(struct igc_adapter *adapter,
> +			       struct igc_nfc_rule *rule)
> +{
> +	struct igc_flex_filter flex = { };
> +	struct igc_nfc_filter *filter = &rule->filter;
> +	unsigned int eth_offset, user_offset;
> +	int ret, index;
> +	bool vlan;
> +
> +	index = igc_find_avail_flex_filter_slot(adapter);
> +	if (index < 0)
> +		return -ENOSPC;
> +
> +	/* Construct the flex filter:
> +	 *  -> dest_mac [6]
> +	 *  -> src_mac [6]
> +	 *  -> tpid [2]
> +	 *  -> vlan tci [2]
> +	 *  -> ether type [2]
> +	 *  -> user data [8]
> +	 *  -> = 26 bytes => 32 length
> +	 */
> +	flex.index    = index;
> +	flex.length   = 32;
> +	flex.rx_queue = rule->action;
> +
> +	vlan = rule->filter.vlan_tci || rule->filter.vlan_etype;
> +	eth_offset = vlan ? 16 : 12;
> +	user_offset = vlan ? 18 : 14;
> +
> +	/* Add destination MAC  */
> +	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
> +		igc_flex_filter_add_field(&flex, &filter->dst_addr, 0,
> +					  ETH_ALEN, NULL);
> +
> +	/* Add source MAC */
> +	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
> +		igc_flex_filter_add_field(&flex, &filter->src_addr, 6,
> +					  ETH_ALEN, NULL);
> +
> +	/* Add VLAN etype */
> +	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE)
> +		igc_flex_filter_add_field(&flex, &filter->vlan_etype,
> 12,
> +					  sizeof(filter->vlan_etype),
> +					  NULL);
> +
> +	/* Add VLAN TCI */
> +	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
> +		igc_flex_filter_add_field(&flex, &filter->vlan_tci, 14,
> +					  sizeof(filter->vlan_tci),
> NULL);
> +
> +	/* Add Ether type */
> +	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
> +		u16 etype = cpu_to_be16(filter->etype);

drivers/net/ethernet/intel/igc/igc_main.c:3332:29: warning: incorrect
type in initializer (different base types)
drivers/net/ethernet/intel/igc/igc_main.c:3332:29:    expected unsigned
short [usertype] etype
drivers/net/ethernet/intel/igc/igc_main.c:3332:29:    got restricted
__be16 [usertype]


> +		igc_flex_filter_add_field(&flex, &etype, eth_offset,
> +					  sizeof(etype), NULL);
> +	}
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
