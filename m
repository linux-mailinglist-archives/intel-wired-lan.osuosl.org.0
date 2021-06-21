Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDFB3AF4EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 20:21:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82A3D404B6;
	Mon, 21 Jun 2021 18:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TpZ_GrDfhhV; Mon, 21 Jun 2021 18:21:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F05FC404AF;
	Mon, 21 Jun 2021 18:21:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 337101BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 18:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1DAD182DF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 18:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TyUg02MaMC28 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 18:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C99382DE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 18:21:47 +0000 (UTC)
IronPort-SDR: /XNpFTwH+rL4StF66aXQboEot9JzhS4eRLMGhZbazTJAAksOkJk4tlBCd5cb0uKKVI0P8wqh0e
 BeJe4fM9gjNw==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206724379"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="206724379"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 11:21:17 -0700
IronPort-SDR: YDPZrifPiatvkS3miY0WcvdgMvGS8Uft1cAqVcPXeCNjMHG464g/g9CyFFPBDcRVww0UlW2K0S
 b9RY+3EqZ05w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="555512956"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 21 Jun 2021 11:21:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 11:21:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 11:21:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 11:21:16 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 11:21:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbkWMWTxX6ZtmNKb6nOg4UBEIztmPt0Waq7OyxU/LqCogs7WEi0vlaY/Negv3hKTMy8/bCeyO42UpI+GR3MatTYwifZuZ4VZ6eNORJvu6CWk4MuFJjD6kU7j2mPUGGSp9lbfOrZewcEu8yjm/rJBVj+CXGxif2KI8SGA54sSPe2U3VNCpkVNp4N690VRAIuLND1Lag1BhR7fy9+1nCDsJz0p0U7SHqPP6+38p2oSH0ueI1uwmVUx4XE+B+gffOsDV6sqxourBGIxkiGSF3dqygfKuuQSP91ygxBndcwIYUl6ZcNRabwM8JljaY39varsd/mJYm27tsaJAwlmXnHa1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFyWXUyJdRNK250a/vKR+wRzoEszwazDnEkjpCps/JY=;
 b=J6MYWHyG9834pvGy9BgnyaDmRggkxr/0yA9cOVRjiJiB4bKE20MgS5H4jBDS1Bp1GKI6BfOZbEmOrGG8mY5Yn9luxni3K1YFZbS33M4GQKtwQxSQfS1t4WxBbR5PI2+6bZWWCbES3h3++ooN0OLnJGLq4cVv+TWAcyb/o0zGZglkreXMihAEgFAnKxO2qiPjrqJMh+JTckiOY4HA6F5x8r/m6bsTcV2KjSrzXffnaGC28FAIOcfKdlz9myysETIU21HR+/JGHWNWo0HWalzxifTmMuVLz2vHCVmL1NTBs75PO8YWEzTjOG8PB5OGpebsl+bCfbBXeARFEhXjCZ4GMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFyWXUyJdRNK250a/vKR+wRzoEszwazDnEkjpCps/JY=;
 b=lJH9py1W56FkEjXwqtT9joeNuVs0N9zalZeaxYhXx8pAnlgKtF/q6B92i7XES7lokcN2uqWQqzwqhClED1JrtQTWQhPHU1J6hiv14L7yBKNDtdd80GfApdj061Cu7NGjyVW33LJRtVdr9LUhHeA3CQW6rG5H6Svi9Ktbe8esJ+Q=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3471.namprd11.prod.outlook.com (2603:10b6:805:c1::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Mon, 21 Jun
 2021 18:21:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 18:21:15 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 07/12] ice: setting and
 releasing switchdev environment
Thread-Index: AQHXZBJFG0J7TioTP0ucNyLEF8yerqsezRYA
Date: Mon, 21 Jun 2021 18:21:15 +0000
Message-ID: <a6a0b9064847e6106cca2ae4a9669b84f4322926.camel@intel.com>
References: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
 <20210617234413.104069-8-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210617234413.104069-8-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00fc544b-290e-4c7b-2ad1-08d934e15b28
x-ms-traffictypediagnostic: SN6PR11MB3471:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3471C5BB6A42D6DE8C83C389C60A9@SN6PR11MB3471.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RqLd7BF67ChFCT9fXwqofcNk3kBtycjCj+Zgc/LW5+Pg0DXarBWo9ZLLD3EQdyU1Yd4C6FlarlQ2j0EGnrH6qbsj7IaTeU38/idT0+98VsW7R+JldXayJ0br6dHeYHWb9I4TaHTLFKJZ3s7PhBrOdhiukJ7Nes1ZelZjPhwGvQ4jkQiAOLl5TSDWn0m+l1M+oqhBW/WOGGE0owKWr+ev7Ot+V092f8z5MNWFtSGJndSA4IFQd0VAMaOs+UlY0pU3y+iO7RSdIDF0bRMz0pl/ezJFbIN2QdHa/wdAgh/EP6ZmjUPaPMgix21MQqvfqUKwjWvty/Iz0StnRm5GFjJKlwiTrpDkqktVjJps5MQyw8Dv03gdcWz7YB1An8IwEadcfgqQjXA7I7iOIpRsCEHEebGPWCeypubyjSBdYsT0zNmtrvd0YzKoDl1pj/DQAsGaEorxPCSk8gmwLSAEHk+p2dBgkoYCxf/tbeMF2fWl055akYiABrJWGHvljb5B7x9xus3JDL34+3Z58+wP7PuC1YnZfDkiVk6pcqxSgthSznAR4pRRTqZpgfoaCqzPhGEbyAWyRKy7wcaY8rjOH28YehjgLhC0qNacO8IkIrSsb0k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(376002)(346002)(136003)(396003)(8676002)(122000001)(38100700002)(86362001)(71200400001)(8936002)(36756003)(4326008)(6486002)(6512007)(186003)(76116006)(91956017)(83380400001)(2616005)(2906002)(66946007)(66446008)(64756008)(6506007)(316002)(478600001)(110136005)(26005)(5660300002)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bC9RV1N0cmFKVW1RM1B1S2NMSG05ekJ3MGFZN3grMGZ5azVRdWd1MVFCb0tF?=
 =?utf-8?B?UTdMY0hIMmp6ZWdqOU5TUE50dnIwV1dUeDFRajRmL0JNUlkzeWk2RXVTM1lL?=
 =?utf-8?B?dStCdUVHNFJhS2w5TXJLYnJOQytQZ3ZiNlVBN3dDUjNIS1k0OFdMWjYrb0lx?=
 =?utf-8?B?ZmR4VERGV3ZreFpOaFFrQXhiMjlOY1VYZ2lEZU1DalB1eXFjT3Z0cFVzT1Nl?=
 =?utf-8?B?OWl3SkttMnhsUE5IZXZDYXJUaGZ0dzdnVmtHbG91SUVCUloyQ1IrNDF0UWNx?=
 =?utf-8?B?M2o0Y2NCNkVRMExJRXRhYnNacjlDZVlWNE1uUjdNV285WjBrajdXbUxuSExK?=
 =?utf-8?B?Y1lMRUV2MHBaUTNGSHlqci9PZGxndy9nZjdESXc4Qm1zSVpZUk9MSEZ3dTBr?=
 =?utf-8?B?ajltZ01OYUVNWUN6bkdYTDBzQUNycVBOa2JHOGFEdytpY1dDWFphTlJmbmli?=
 =?utf-8?B?cXVDRnlzV2NOTVRTeEVUcHdCWWxPV0NnaXVQeWVvYUhWNWx2c09XcWtsam9E?=
 =?utf-8?B?VFF1bjNtSzNrQkUrUU8xTzBTQlZRQXJMTUNSejhTaTVBSU5jZEhuNGR4Z2E0?=
 =?utf-8?B?Z21IeFJKMkdEc0Q5eUk3T2lHdUdPMFpmUkxuSE91TTdod3FhNy9RR0RkRXA1?=
 =?utf-8?B?US9ybVZSbEo4RThkbGt4amlqdG1Ca0xSU2VwekREamtOd3hrUHVoVHg2ZDcr?=
 =?utf-8?B?VHp6dFBaNk1YT0NDSEVQeHFrU1FnbVdvRlU4Yzlna24vQmQ1QlJmSW9WRzRU?=
 =?utf-8?B?V1lTU3FZTS9MQll2MmxGV05GVkU0NWdCTUhuNjFkYS94R0dzNzZlSEVJa1Vx?=
 =?utf-8?B?dnJJdTRpN1dJRWhKMkljNUNteVBoem1nTVJ0eG5DbTBrdm1WS2hVWjFyL0Q3?=
 =?utf-8?B?SHlKdnVBVWE4S2hnWWpuWEZMRTZIdW1mdUxvTndLT0kzLzYrU0dWM1VNYXph?=
 =?utf-8?B?UmZWVFlJZ0hnUXJPSWtrV1RRckRuRWdPQVdDS3ZYNGFKRVZSVEVaT2FHdDdu?=
 =?utf-8?B?dTl4UkMxY2xHMGRwNEZiWkpCbnkxZ0ttOXo0M3JGTXdBRnBlcU9lV0QzcFVv?=
 =?utf-8?B?YkxMejdleDdwcUdMZE4wWnBkcnRheStsdkNmQnBCSkV2NFhLUXNUc3p3elNN?=
 =?utf-8?B?SkZQYUM5aXU0enhwNnQrb05mQk1ZK0wwSDRHTHo0U2NUbEN6Wit4QTVxanZ6?=
 =?utf-8?B?ZkluRnNzVWtIZ0FxTVhEVmNieUY0SVJjQXRaZHFtaUs0RGY0bC85NVNsTXNT?=
 =?utf-8?B?WXI3NGxFb0gyUmlQQ1dvc24rNHg0dThEWXhVVkh4WVM2cWtFaUxreUg1azJZ?=
 =?utf-8?B?QzA2TE5iS2Q3dnl1YW8rYVhKa3VNek5TaDl6MEF5ZVU1S3hiYjBpTkUrQUgx?=
 =?utf-8?B?QWdFSlJTNVlWR3NnYVR4cTVjV2NLbFFOc2VDamVHNXNVN2Q4VlV4cTNsdkhD?=
 =?utf-8?B?RGtMakxLV0grWTROK0RVa29Nd3FzNW5pU2tLZXQyZlgzT3B6eVE2OTdNUU81?=
 =?utf-8?B?VlRVYzNaeU9iVEFncFNUZmF4eVdqSVhyeU14V081N1JtR2lFVjJyUmE0QkpX?=
 =?utf-8?B?Qzl5L0RCM2RwcndOZTUzYVIreTI1WUNRQXowTlhJbzdIcmtHTHM1dHdWMDl5?=
 =?utf-8?B?alBHRCtGNW14YWh0VkZ4dDNVclFrRlRNblF6UTMzMG1jYmVlZFVEWFRNTlJk?=
 =?utf-8?B?TFVxRGJ6WmQxdFJGV09KbnpEekxENXgxbEQvRk1kUDNUdlYyai9Cckl3UEZ0?=
 =?utf-8?Q?12RR8K1Lp3Zp2sL/GAwJlp287lMMb/9tAFWVQzP?=
Content-ID: <2C8537AC037503498481CED26F000DA9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00fc544b-290e-4c7b-2ad1-08d934e15b28
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 18:21:15.0331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6spH8rTgeNZcQITTXa8lGMeY2iAjE77VUd7WgmCJLQ5EklwcUjD/Xhv/6uSO6TcBIHW6+juF31YTPxkN1ZMGor+m2pfhjiUnxpUVO8Mpvpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3471
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/12] ice: setting and
 releasing switchdev environment
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
Cc: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-06-18 at 01:44 +0200, Michal Swiatkowski wrote:
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
> 
> Switchdev environment has to be set up when user create VFs
> and eswitch mode is switchdev. Release is done when user
> delete all VFs.
> 
> Data path in this implementation is based on control plane VSI.
> This VSI is used to pass traffic from port representors to
> coresponfing VFs and vice versa. Default TX rule has to be
> added to forward packet to control plane VSI. This will redirect
> packets from VFs which don't match other rules to control plane
> VSI.
> 
> On RX site default rule is added on uplink VSI to receive all
> traffic that doesn't match other rules. When setting switchdev
> environment all other rules from VFs should be removed. Packet to
> VFs will be forwarded by control plane VSI.
> 
> As VF without any mac rules can't send any packet because of
> antispoof mechanism, VSI antispoof should be turned off on each VFs.
> 
> To send packet from representor to correct VSI, destintion VSI
> field in TX descriptor will have to be filled. Allow that by
> setting destination override bit in control plane VSI security
> config.
> 
> Packet from VFs will be received on control plane VSI. Driver
> should decide to which netdev forward the packet. Decision is
> made based on src_vsi field from descriptor. There is a target
> netdev list in control plane VSI struct which choose netdev
> based on src_vsi number.
> 
> Co-developed-by: Michal Swiatkowski <
> michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com
> >
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---

<snip>

> +/**
> + * ice_eswitch_vsi_setup - configure switchdev control VSI
> + * @pf: pointer to PF structure
> + * @pi: pointer to port_info structure
> + */
> +static struct ice_vsi *
> +ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
> +{
> +	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> ICE_INVAL_VFID);

This doesn't build; the switchdev VSI doesn't get introduced until the
next patch. 

drivers/net/ethernet/intel/ice/ice_eswitch.c: In function
ice_eswitch_vsi_setup:
drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: error:
ICE_VSI_SWITCHDEV_CTRL undeclared (first use in this function)
  263 |  return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
ICE_INVAL_VFID);
      |                               ^~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: note: each
undeclared identifier is reported only once for each function it
appears in
drivers/net/ethernet/intel/ice/ice_eswitch.c:264:1: error: control
reaches end of non-void function [-Werror=return-type]
  264 | }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
