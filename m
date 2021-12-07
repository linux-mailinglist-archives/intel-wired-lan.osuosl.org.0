Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 420D146B7EF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 10:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C871E4054D;
	Tue,  7 Dec 2021 09:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYN6pzVOv7wM; Tue,  7 Dec 2021 09:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B25A40264;
	Tue,  7 Dec 2021 09:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 901AE1BF326
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75A3580BBE
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KiKHKSQpyR_e for <intel-wired-lan@osuosl.org>;
 Tue,  7 Dec 2021 09:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6484C80BB7
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 09:48:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261607680"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261607680"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 01:48:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="479469845"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 07 Dec 2021 01:48:54 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 01:48:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 01:48:54 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 01:48:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICLlEMT09xun9QLUKpG9608UVVLpNP54X7DLawlNrr1oTPew17xMkOSjSxAwleHuJ2HEiqnmdptEgeUfQkqsieqNyxOW9IC5rdGE/Vh3UuzZpc4CO0isuxS3ysyajIyGcxrLRPQ2tA/hE+zdFZfoAbvOhZ/cz2MHLwg+89r7eT8ssuAFFznnR8UfB7deolE5a6rWvexLwfxXFGbH9KyJc2mK24xTsutzBukgClcZMia/OhKW7WxXxKy55fxp8FwwEJMT/WP3vlVNb3y3kX5IKJKGyONw3wzI1WMKFXefk24QkuSh9bHswKkH2xdGER6+HisaZdN1P1TN+gPIM0jfNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gd7FR/6jI0HLlVDSCzORvffywhymzYhY+264B+gkxxs=;
 b=KWdsJ841Xlw9r+cgwREIzyX4YyklXEqrXWDaYPFBITYcIMCX+lzNwB9ky/EqDOd8ZkUYXSz2ONojfLt158MOlIWUq2ULsv9tnPWvAtPwJHQTe6ZqgP0Yi6Qz6xAqC9LuNlKf9iF8CzKaVMexAt9FQvRWhm4z80oXyN+fUZjmWlvEt040YdohVQZgdcRF9DCBJVXP2VbTtFN/PKCht0V8u/zenk8SJpgwuQgRNEI/lPboqIsKtLR0jana1bsZpBI5LLfub3makSkPVO3D0ttv4Q9GTmxx9kF0CaNjdIfjRKTUTARpX3ESZxFSY7y/7VZq93sC/cWHb6U/++yFDJ6GpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gd7FR/6jI0HLlVDSCzORvffywhymzYhY+264B+gkxxs=;
 b=WllNp7xrfzC/yS6rOuUFBNviWANZAUSU7nWPCy/wYZHdAoJqAEgR8TVGcLRY4uE2Omb1tg43rQXoeK+W2K6l+J0caYNemaDqxTIU3hw4/ycSfdQ5FQ8MinukBghRO4cdXcYFUVQ+l9Gubrvu52PI2W0iNhM2WTJVxms2z0mrkHo=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4995.namprd11.prod.outlook.com (2603:10b6:303:9f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Tue, 7 Dec
 2021 09:48:47 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4755.021; Tue, 7 Dec 2021
 09:48:47 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: fix adding different
 tunnels
Thread-Index: AQHX37eIOxnyZEuIWEeQLVkAP00q86wmrMYAgAAy3ZA=
Date: Tue, 7 Dec 2021 09:48:47 +0000
Message-ID: <MW3PR11MB45543A851F8C336C3B561F919C6E9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211122153925.418606-1-michal.swiatkowski@linux.intel.com>
 <Ya8DLPnVfqZKsE+5@localhost.localdomain>
In-Reply-To: <Ya8DLPnVfqZKsE+5@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7dd7406c-e375-4d32-4d27-08d9b966c401
x-ms-traffictypediagnostic: CO1PR11MB4995:EE_
x-microsoft-antispam-prvs: <CO1PR11MB499518B9BFE440808CDE19179C6E9@CO1PR11MB4995.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kYeTuNqffKcqZUoEAOYn3OAJBK0784PTJKo01VPsts+vlCznZodwOR67lS9iJPO0rcqkad0O5snho5IcBRa+EcnCLioN01IN3vhz5SfnOejrcsmTpt5RUd5Fn/deTp8JvWGEnm47y7P1ubnKIgofUJaaVvazjvsPawazYRl+r6lV71Gd4+ZoMi8fxSsKhKEwHh9smfhMTJ7aPMSsmrAAJ6v6dNNWPtvhtwe7W7PT2xqdxfFOrn6+/rM2Ht0eLC068HztAxLR9NwKscQVbpA7x+Tb0aliPmCQKhtwfHBS5+/MWc4sy+m4uNH3/nJBl/k4aespLi9mDlU72vGa5poT/cb3sfLU4LnjweL1jBb6gTzrjmG89ktHqHd/pg9NXIdduELNiZhodOf4vPTN7BiYKTAMo1LD/xyKrtFaU1i4+GwqNNyIONFo78BO2RT1DSjxVLcy4uFESBB9V8fD7lzFgYefdYSmRaQK3n0zTyE9e7s37BPephTVYgdXpnGwJX6qNE0zdmDtfdYP7WhtX5w4QLgGwkxegK1Hm4KGZUs78KkXGYETCjm0rhKF0dAJQGbeJBJsts2ZbwdgyWOxVs1uVsDoKGvkgYC/GR33A1MCuUdJY08ljSSjPNf3UjYru1S8+eecTRfahUwrjsI0V9HcXhwj8IeIkSdxLE0novcT5BcfvvEFmFcUNWJIPd0skancAiFbsqUVK+vUdH7jMT8mqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(38100700002)(86362001)(55016003)(122000001)(33656002)(71200400001)(9686003)(64756008)(508600001)(186003)(8676002)(66446008)(66946007)(66556008)(66476007)(76116006)(83380400001)(5660300002)(52536014)(8936002)(2906002)(38070700005)(7696005)(316002)(6506007)(26005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+2heVmQWy9AZvbrz5LoLau66gjdLxEje4ZJEyls+tCV45l6Yt/vGVkuMfJv+?=
 =?us-ascii?Q?WZSD7amSSSE+7BTGuuZYAwgJJWNSmybnM5twcO4U0a7fWlCQwEj2MB/WX9zb?=
 =?us-ascii?Q?Hb4dqrBXe9IFfsHE63JmK81sgxALnssRWh4Ja1BV7F1WNDD5VeY3ElKu/NzQ?=
 =?us-ascii?Q?RrxkdkrK0BWJoHNxm0FBGEaqW+jen8/ZxublJizP2PzJid+Hlac3oqy/yLCw?=
 =?us-ascii?Q?w1/Zp81vPnwah627MP3YJPHqnTVM9Eel21SbOd8TYm6sb3Uw/Z827eTfrfay?=
 =?us-ascii?Q?dozOoSbaKNH9rLKkw6Hsd7O1mr7Pm3Z/Hl6gi18z5zU9i+3OSBW0LalLN1xZ?=
 =?us-ascii?Q?WLDPe/NPihXbRmw0XIbOo6MOPf7wcTKbsRSjGBUIK8KzZsrSeWxTTTjHG2fa?=
 =?us-ascii?Q?GvP8eH86RCSnuyNoqPPyvV02T6IV7jQlfpjVVz2ETeiUdKZda0si8iFzFvLz?=
 =?us-ascii?Q?UGV4zKCJbCv1ygIC4a2/H0D9XW/814/C9bkCFqRbWKtNJPqtu70stVQiNy1L?=
 =?us-ascii?Q?VBGdV3Y9fN0kwYIN5rgKAZvA6Ut2/MGDartJOq973bE6C59c+ORr//vIZvNy?=
 =?us-ascii?Q?jhRV/az5ykz8cGW+2cZH6zGxUbSfiLRJ6I83erod/Ra5hEaMh1fP3LAyO0OO?=
 =?us-ascii?Q?9NZzRTBpipekoZDy7Gsixm7O3A76EobDODccLc8O6SI65hnq9h/MG9AiJqGt?=
 =?us-ascii?Q?fGdckoO5z+PA7MvLgDnxSm96/iRh9mypS/2IyyJ4Sc5cuLxIym7JP/jrBaxm?=
 =?us-ascii?Q?74rhJqkStwCS2cTZVv5wBAvTMXbTchYEg5btjvWKVP37ABvnHbyLPNjEK0FA?=
 =?us-ascii?Q?j3YoZ2789RSCJ0qXqlf2Dxa3XlkF5y9HFNYM1xNqMjumCHm8mzvAZFGomYDg?=
 =?us-ascii?Q?5+HYB10Ew+D56hoBR7LQpx7fCgjG7Q1B5R7vk2lZidiRim798DKa5e0e2TzC?=
 =?us-ascii?Q?anKLnE64xa3uDu7AhF8qyBfhe4yeaEcD4LT5FHGTqWtSoFug0mk0j93FitV3?=
 =?us-ascii?Q?5nL/kQNKXXkLBIu2jBagWlY6kYWOtgfFNTjhYxlXAuPc+UrF9oHdXA+UkDOS?=
 =?us-ascii?Q?J1aJQ9wUZP6peAYnjHHsXX/3s96bnvpgJBhITDc8avBoLYZbEZLVWuDiT7C5?=
 =?us-ascii?Q?mab/LLZNA0vfKjSpwunpqai1h54EPeI82GakRhwwWbGGZVnay2MQ37NAogg5?=
 =?us-ascii?Q?X+PSSCA4cSLbgkQKS7UQ9EA3uuwY+p8KDObnhE3qBjeejfUIlRG/T5Sa6gS4?=
 =?us-ascii?Q?xC4FoqKx2/JAhfF3LtHEEfKLzNwO+A8pIsnHDKdUWxInRrqdVD7a78ZsX+Po?=
 =?us-ascii?Q?pgU2wDxXVzywMabtY6Ew28jR9DN28164Fr2K7wkp0onvP7guBJT1Stapgjep?=
 =?us-ascii?Q?UKK2aYZnSRWpU5cOy18Jn5m/ZwBDujc12c+AkexpzJEOPHRm5X07tFvl1qFt?=
 =?us-ascii?Q?BtB9vnrDpu1aRvFcNcMruVKhBvMEPg13lJDV15V3e8N3vQ/pbWarF6gmMB8h?=
 =?us-ascii?Q?bFIvd4L4hWVqb1LmSW8bg39O04XbrUxEwc/OZZnURItaGLvpRXNRzj5E7g3/?=
 =?us-ascii?Q?kT0lKgQHvTFAOUIczB3ExevZib243YLlrVtZaEcRIWTuZzYjUj/EAw7Z9/q+?=
 =?us-ascii?Q?gBdtlQ+ZmsNukPpZqPbPnsaoGA+qGn5yutA06pnr4Zxhpc1Xh/Oy/hFckrE8?=
 =?us-ascii?Q?klr+4g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd7406c-e375-4d32-4d27-08d9b966c401
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 09:48:47.3807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceIjo6HravSTjvE9qtxL/khKNKddM7IQNeZ4lbFZJ8MiFNWT111wqxD+S2jLi/r+hpX8R1R5gANidzJBFKxw6xrUL8/tTuos+ZZz7O32MmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix adding different
 tunnels
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Sent: Tuesday, December 7, 2021 12:16 PM
>To: intel-wired-lan@osuosl.org
>Cc: Penigalapati, Sandeep <sandeep.penigalapati@intel.com>
>Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix adding different tunnels
>
>On Mon, Nov 22, 2021 at 04:39:25PM +0100, Michal Swiatkowski wrote:
>> Adding filters with the same values inside for VXLAN and geneve causes
>> hw error, because it looks exactly the same. To choose between
>> different type of tunnels new recipe is needed. Add storing tunnel
>> types in creatig recipes function and start checking it in finding function.
>>
>> Change getting open tunnels function to return port on correct tunnel
>> type. This is needed to copy correct port to dummy packet.
>>
>> Block user from adding enc_dst_port via tc flower, because  VXLAN and
>> geneve filters can be created only with destination port which was
>> previously opened.
>>
>> v1 --> v2:
>>  * fixed functions description (Tony)
>>
>> Fixes: 8b032a55c1bd5 ("ice: low level support for tunnels")
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> ---
>>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c  |  4 ++--
>>  drivers/net/ethernet/intel/ice/ice_fdir.c      |  2 +-
>>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c |  7 +++++--
>> drivers/net/ethernet/intel/ice/ice_flex_pipe.h |  3 ++-
>>  drivers/net/ethernet/intel/ice/ice_switch.c    | 18 +++++++++++++-----
>>  drivers/net/ethernet/intel/ice/ice_tc_lib.c    |  3 ++-
>>  6 files changed, 25 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> index 68ac0be68107..bbc64d6ce4cd 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> @@ -1258,7 +1258,7 @@ ice_fdir_write_all_fltr(struct ice_pf *pf, struct
>ice_fdir_fltr *input,
>>  		bool is_tun = tun == ICE_FD_HW_SEG_TUN;
>>  		int err;
>>
>> -		if (is_tun && !ice_get_open_tunnel_port(&pf->hw,
>&port_num))
>> +		if (is_tun && !ice_get_open_tunnel_port(&pf->hw,
>&port_num,
>> +TNL_ALL))
>>  			continue;
>>  		err = ice_fdir_write_fltr(pf, input, add, is_tun);
>>  		if (err)
>> @@ -1642,7 +1642,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct
>ethtool_rxnfc *cmd)
>>  	}
>>
>>  	/* return error if not an update and no available filters */
>> -	fltrs_needed = ice_get_open_tunnel_port(hw, &tunnel_port) ? 2 : 1;
>> +	fltrs_needed = ice_get_open_tunnel_port(hw, &tunnel_port, TNL_ALL)
>?
>> +2 : 1;
>>  	if (!ice_fdir_find_fltr_by_idx(hw, fsp->location) &&
>>  	    ice_fdir_num_avail_fltr(hw, pf->vsi[vsi->idx]) < fltrs_needed) {
>>  		dev_err(dev, "Failed to add filter.  The maximum number of
>flow
>> director filters has been reached.\n"); diff --git
>> a/drivers/net/ethernet/intel/ice/ice_fdir.c
>> b/drivers/net/ethernet/intel/ice/ice_fdir.c
>> index 9970ac3884f6..bbef6f4366de 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
>> @@ -924,7 +924,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw,
>struct ice_fdir_fltr *input,
>>  		memcpy(pkt, ice_fdir_pkt[idx].pkt, ice_fdir_pkt[idx].pkt_len);
>>  		loc = pkt;
>>  	} else {
>> -		if (!ice_get_open_tunnel_port(hw, &tnl_port))
>> +		if (!ice_get_open_tunnel_port(hw, &tnl_port, TNL_ALL))
>>  			return -ENOENT;
>>  		if (!ice_fdir_pkt[idx].tun_pkt)
>>  			return -EINVAL;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> index b12da3cda78b..b197d3a72014 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> @@ -2040,9 +2040,11 @@ static struct ice_buf *ice_pkg_buf(struct
>ice_buf_build *bld)
>>   * ice_get_open_tunnel_port - retrieve an open tunnel port
>>   * @hw: pointer to the HW structure
>>   * @port: returns open port
>> + * @type: type of tunnel, can be TNL_LAST if it doesn't matter
>>   */
>>  bool
>> -ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port)
>> +ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port,
>> +			 enum ice_tunnel_type type)
>>  {
>>  	bool res = false;
>>  	u16 i;
>> @@ -2050,7 +2052,8 @@ ice_get_open_tunnel_port(struct ice_hw *hw, u16
>*port)
>>  	mutex_lock(&hw->tnl_lock);
>>
>>  	for (i = 0; i < hw->tnl.count && i < ICE_TUNNEL_MAX_ENTRIES; i++)
>> -		if (hw->tnl.tbl[i].valid && hw->tnl.tbl[i].port) {
>> +		if (hw->tnl.tbl[i].valid && hw->tnl.tbl[i].port &&
>> +		    (type == TNL_LAST || type == hw->tnl.tbl[i].type)) {
>>  			*port = hw->tnl.tbl[i].port;
>>  			res = true;
>>  			break;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> index 1c2be376a537..dd602285c78e 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> @@ -90,7 +90,8 @@ int
>>  ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
>>  		   unsigned long *bm, struct list_head *fv_list);  bool
>> -ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port);
>> +ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port,
>> +			 enum ice_tunnel_type type);
>>  int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
>>  			    unsigned int idx, struct udp_tunnel_info *ti);  int
>> ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int
>> table, diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
>> b/drivers/net/ethernet/intel/ice/ice_switch.c
>> index c1dbac5f8d6b..7f7bf9815700 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
>> @@ -3792,10 +3792,13 @@ static struct ice_protocol_entry
>ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
>>   * ice_find_recp - find a recipe
>>   * @hw: pointer to the hardware structure
>>   * @lkup_exts: extension sequence to match
>> + * @tun_type: type of recipe tunnel
>>   *
>>   * Returns index of matching recipe, or ICE_MAX_NUM_RECIPES if not
>found.
>>   */
>> -static u16 ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext
>> *lkup_exts)
>> +static u16
>> +ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
>> +	      enum ice_sw_tunnel_type tun_type)
>>  {
>>  	bool refresh_required = true;
>>  	struct ice_sw_recipe *recp;
>> @@ -3856,8 +3859,9 @@ static u16 ice_find_recp(struct ice_hw *hw, struct
>ice_prot_lkup_ext *lkup_exts)
>>  			}
>>  			/* If for "i"th recipe the found was never set to false
>>  			 * then it means we found our match
>> +			 * Also tun type of recipe needs to be checked
>>  			 */
>> -			if (found)
>> +			if (found && recp[i].tun_type == tun_type)
>>  				return i; /* Return the recipe ID */
>>  		}
>>  	}
>> @@ -4647,11 +4651,12 @@ ice_add_adv_recipe(struct ice_hw *hw, struct
>ice_adv_lkup_elem *lkups,
>>  	}
>>
>>  	/* Look for a recipe which matches our requested fv / mask list */
>> -	*rid = ice_find_recp(hw, lkup_exts);
>> +	*rid = ice_find_recp(hw, lkup_exts, rinfo->tun_type);
>>  	if (*rid < ICE_MAX_NUM_RECIPES)
>>  		/* Success if found a recipe that match the existing criteria */
>>  		goto err_unroll;
>>
>> +	rm->tun_type = rinfo->tun_type;
>>  	/* Recipe we need does not exist, add a recipe */
>>  	status = ice_add_sw_recipe(hw, rm, profiles);
>>  	if (status)
>> @@ -4954,8 +4959,11 @@ ice_fill_adv_packet_tun(struct ice_hw *hw,
>enum
>> ice_sw_tunnel_type tun_type,
>>
>>  	switch (tun_type) {
>>  	case ICE_SW_TUN_VXLAN:
>> +		if (!ice_get_open_tunnel_port(hw, &open_port, TNL_VXLAN))
>> +			return -EIO;
>> +		break;
>>  	case ICE_SW_TUN_GENEVE:
>> -		if (!ice_get_open_tunnel_port(hw, &open_port))
>> +		if (!ice_get_open_tunnel_port(hw, &open_port,
>TNL_GENEVE))
>>  			return -EIO;
>>  		break;
>>
>> @@ -5551,7 +5559,7 @@ ice_rem_adv_rule(struct ice_hw *hw, struct
>ice_adv_lkup_elem *lkups,
>>  	if (status)
>>  		return status;
>>
>> -	rid = ice_find_recp(hw, &lkup_exts);
>> +	rid = ice_find_recp(hw, &lkup_exts, rinfo->tun_type);
>>  	/* If did not find a recipe that match the existing criteria */
>>  	if (rid == ICE_MAX_NUM_RECIPES)
>>  		return -EINVAL;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
>> b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
>> index f243dacda8a0..e8feb41e6dbe 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
>> @@ -800,7 +800,8 @@ ice_parse_tunnel_attr(struct net_device *dev, struct
>flow_rule *rule,
>>  		headers->l3_mask.ttl = match.mask->ttl;
>>  	}
>>
>> -	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS)) {
>> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS)
>&&
>> +	    fltr->tunnel_type != TNL_VXLAN && fltr->tunnel_type !=
>> +TNL_GENEVE) {
>>  		struct flow_match_ports match;
>>
>>  		flow_rule_match_enc_ports(rule, &match);
>> --
>> 2.31.1
>Please add tested-by tag, after succesfull testing :)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
