Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B4B3EE089
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 01:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56C3A80B72;
	Mon, 16 Aug 2021 23:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-qMVn16jrcJ; Mon, 16 Aug 2021 23:49:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A27280E2E;
	Mon, 16 Aug 2021 23:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 610711BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57E6980E2E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tQNQO6zZTHO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 23:49:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15E5680F91
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:49:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="212846644"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="212846644"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 16:49:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="520090668"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2021 16:49:07 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 16 Aug 2021 16:49:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 16 Aug 2021 16:49:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 16 Aug 2021 16:49:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 16 Aug 2021 16:49:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezEffZtpAPLTZxriFC/BvVjZfBorlZ6NcLbfegV8ZDKacx9ojvB+2d5ejduiNaXLxCFLdVkCZ+PIbH/vAf7wIG8jqlH63yrApdoMUNw6uT3uHO9AShx4gwUmJ5Ia3lxS3BtpEOPWG5dze8rnEiyBzn1beWuQuNGIcMUKtGOaVmV31sqWUs9yfIPXnwWos0S+tZFqn++gGmoS/dng2ODKly9VBSbYiVbgHe0JDDhJwjHsUul8tt6JqVXYJqds9FqBTSOL/ST+G6y5iLsjuJCN4haelP3mcNqEZQXHvbM+XqUcENifSK9dtamS5a2WArJxIfXfZgK/BeEGgba/ZRTgxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73yP6BcBxMPa3O1vJKCerFGNZ4uIQX5dcFDCZKa55Wg=;
 b=S9Cejlx5hoFrFrsp+h0ct/AMlOKDi18E9VdmA+FL+dxxC6VGWrNlxS0zCUf9/DyCynRXZMotVeZ1EvNl/ueL/sQOeUaAQPvIL6Vo9SPVYqxO9kbke2jTggJrJ+ZPGpzIYVE2UWEl5c0/eNC8Xm/yIXmhPPVtsrs20mZgg1k0n0qp7BYuaX/vcowxNuA9HGyJUMZqiR3Wtm9pOC6CxwJCBnNltkkCaU6UjI0uGRLGVFm71Gi8c8A338pk/xeAq54ytCru1pdOEukH/jo/RzdHe+WPO2xv+M16qmEV0JJFBgILvsYlkaAS4gEO7S/Pw5smaY0Vdaclwr7p4RDtV9ASwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73yP6BcBxMPa3O1vJKCerFGNZ4uIQX5dcFDCZKa55Wg=;
 b=Eb4ALubIZkMbrxFz55KGvjBEsjo5Mo81/5QspGyEHIcl/IFprdbqmddBBoJynLiO0ST5ei+YwbaMwCocEP7RJ228n2N8hzyUZ1uRhh03QkAonKvkBDrF6E/5RnX9R4B+amG4n5jmNvMOtoDu4goHhWQtYnHDqQmfxOiC05k7zWw=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2669.namprd11.prod.outlook.com (2603:10b6:805:56::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Mon, 16 Aug
 2021 23:49:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4415.022; Mon, 16 Aug 2021
 23:49:05 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH intel-next 2/4] ice: Implement functions for reading and
 setting GPIO pins
Thread-Index: AQHXkouSR7TCrgHk20eWuHkacKj/iqt2zoEA
Date: Mon, 16 Aug 2021 23:49:04 +0000
Message-ID: <ce429d170c827e21342fabaaba57f1816eeef564.camel@intel.com>
References: <20210816102729.1266522-1-maciej.machnikowski@intel.com>
 <20210816102729.1266522-3-maciej.machnikowski@intel.com>
In-Reply-To: <20210816102729.1266522-3-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e73f379e-57b4-4a8b-f59d-08d961106e79
x-ms-traffictypediagnostic: SN6PR11MB2669:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2669FEDA310AC72F95488476C6FD9@SN6PR11MB2669.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4e/BX4EsyTMwBUP3rL3tUpJtpSApgCXowk3xODhFvZBteLCKA/FSfEydNG9CfFqGtb63iyNAAYhKDXtstRNJBK31QvrRUdoTKtLiik1rSsh5rvI3bDOiC1qLMls70S9Da3j1ylcuS8ufjKxN9qt6/m8knqme0STlyHgE8QGsnxaFetiFnXCxkhQY3U8jRw7lLdBFUB/ILbBxfo1xOPZ/enO8ici9+BUGHGTKTVcWV+NQbRQnT2hk2n+W5Ledolry070XHlij+OnQG928DZ8fUGSRtWp38Gj3xQHlZFoz9AlBZRApLdcwsJbMC8mJw84GcsuC9Ws4Y5FBHmfjBY1xBq2PGxFLTCMXjI1z2ptghAa7UueB42X8bm4KkgLjie0u7xO/CG1lN4nGRkH71Z8WPzrt8wBqHyT2vbzquDqgJD3meMqPL0lf1yuNOwRWzXnIPOAREwWQTPpYea2kO1KV4mkU82de4ZYxZCbYFaHc8dj1IN1xmH3gdmCy/xrbU4Livk3YdYrL5xvJ3NoEBqAEQK1llNltues/LRcrDZMWxxf+L3ONMw/I767t+bNi30sTXVseg7xu2mszzVEBsUrJWFpd3ROqjfjh6F77chaQ7G3bHjC0OzPOadrMO3QEf1wVX/Thp0XVHoqxVOTTTAjyu1NC45Erq1rmNkX9g23BBYFq+EAouq0ryg0YS89YPbcwM1RknXCTUNXCLP8x3Lvq0f7MKLxe8hokeIqgYYBRhcY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(2906002)(6486002)(83380400001)(8676002)(122000001)(54906003)(478600001)(6506007)(38100700002)(8936002)(5660300002)(26005)(110136005)(6512007)(38070700005)(86362001)(66556008)(4326008)(66446008)(64756008)(76116006)(66476007)(91956017)(66946007)(2616005)(107886003)(71200400001)(186003)(36756003)(316002)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHdXN0dDb3QwVklyd29MdzQ4ZzN4YUdmRFowQVQ1R1B2b0hUdlVJSEduV0tZ?=
 =?utf-8?B?ZFVPWng1Nm1URlY3M2htQjhsZTZCeGhjTGJ4Z2RZOHpOTElZRVlHbTcyZk5s?=
 =?utf-8?B?Y1pJOHdCcFZ5MVFlVndrQ216a2tsMHdxdmdmZy9ZaGpKOE9xR1pMQjlnVlRC?=
 =?utf-8?B?dXNSQkIyOEpGRkdIeVRWSTZZdnNDVXNKeTFETmh5ckdNTVJPNlZ0Y2E0REg4?=
 =?utf-8?B?RWdmYXhRWGtha3d1NXUySDBYdk40Ukg3NHlFYmpxWlF4V0xBTVk5aHlWRFVr?=
 =?utf-8?B?b203N2tVai9Ha3RMR1ZRaHBOTVk1UlZyODJqcXpWVE9VN1BnVmliaXZBNkxv?=
 =?utf-8?B?ejNUZTJNanJubnNHWW1TUC8yQ3FEbi9DR2Z1QXhRVmFwOVZXTkY3a1BtdVpT?=
 =?utf-8?B?TmxIZUJnSllNWVhoSGkzaUJwOWNvend0ai9rV05yMUQ5QmhNWlZVTEEwZjVE?=
 =?utf-8?B?aFZiSmpXUUxGbHp3VDREYVBNUGorVTVyWnlac0JKRjI3Tk9Gb3dVUHh4blBZ?=
 =?utf-8?B?R01qR1FHQUdIQjc3aHZpdDhSU01vUGhOcVAxdXVMN3ZXeDZBeG51MHlEWE43?=
 =?utf-8?B?NitURXgrNitnLzZyNm90Qnl6dVBvRjFTVldOWjJodXA5REJWQ3REYVdnRG5V?=
 =?utf-8?B?OVV4Mjg2TjhDMC9jemJCeVZvaW42RkYvOE13TklnWTE2N3R6WWluZ0JXcWlN?=
 =?utf-8?B?YnI0TjNEN0JLdFNiYTlzWW5YZ0xDV1MyQjBoNmxzcElnOEh2NzlnQldmUzJM?=
 =?utf-8?B?TFJHT3VJRjd4ZTZydDNOQmxrWTZCeUNOem9hb1JZT01aeHVYL3R2R3FiVlNO?=
 =?utf-8?B?dTBrNkY4YVUvMDV6ODVRWW1QS3hjV2txWjNnVk5NRkN0SkZ2VktSY1VKVDJO?=
 =?utf-8?B?VTVDL2hXWUpwRlljcE56aVRnS0luU21RYXFVc0lOcUJHa2NLQ1FOZm52N0NT?=
 =?utf-8?B?c0tJN0Z6TXpNTmsvcjNGdVQvZ0xOcElFa0x4bVRNTXdaSngxU2M4a0lpdWta?=
 =?utf-8?B?c1crNDZGWUFCejlUcjV1cFdJV1hIRXVGV1dSNXF3aEl3bkw4S0RJQjM4Nnpq?=
 =?utf-8?B?R01CTTFEY3hKUWRBdFJpOWNhU1AvTmkwT0hMb0FmbGlGVk1YKzJXOHJud0pa?=
 =?utf-8?B?UGNDSHg4a2dRYzZmQTRtWVd6MU93WlgwMTEvWmxDOXZPSWF1ejF1WmdkbE9r?=
 =?utf-8?B?RWtLbHdKdTJPRkNmeU1kaDRySFEwS0dlZUd0TWZoUWt3cit6U0RoSklzZ01K?=
 =?utf-8?B?VFJJMjE5aVdJK3d2VVliRWtkQWZQOU9iL2lDMWFYZjBsMTBCcHBGS09EZFhn?=
 =?utf-8?B?NGxLa3N1N25YdFJiYkJxVEFzb2FZQlliRGdNN3NibUhmSDFuL0VCSXZscitD?=
 =?utf-8?B?ZGp5Y2l1V1ptMjdLVE5qS3VwSlRwTHh6QkZIZ1Nrd3FNN0p5OFVvQitoY2wy?=
 =?utf-8?B?UWJHaS9CTk9kek9DcFRSY3Y3dktBamY2RzJRNDlTdXZrQ2llRVg2eGNKUlB4?=
 =?utf-8?B?K0Nocy9DUEZMeFZaWnN6Yis5cmdmOE9oa1luN25MTkdLS2pWNktwRGRrV2xi?=
 =?utf-8?B?d2dKVXViY1hGQStRc1FiajZQVmxUazl1cCs2U2Juc0t4d1ZzYkxWaFlBZTlm?=
 =?utf-8?B?WklGbUp2YXZuaXFFVWUrb2FERU5EcGVYK0N5eGtaYXJ6TW5nZlJmeGlSekJJ?=
 =?utf-8?B?b0JBMWhQOFoxMXdVV1A3MVE5dDQxR1QzaklQVkR1RzZiMjd3akdPMng3NXNC?=
 =?utf-8?B?SjZ2RDV3MytKSDdCMy91OTBVRmp5Z3YvOXQvenZnbDg0blkrTUhjSlFCWlQ3?=
 =?utf-8?B?ZXFrc3N1V2NXUHNKbGZqQT09?=
Content-ID: <071010FFB68F8747A82DF591B778ED6C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e73f379e-57b4-4a8b-f59d-08d961106e79
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2021 23:49:04.9054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dLg0Lw5gAvatOmF2H+4rfdr5JvQSG5JaBJymJNnlWOIX8PcCHRMa8JYieXcfI4gSnfVF0eiL6mIFD9EeSwttAfYNvML7AulK6Z4xO+dwh8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2669
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/4] ice: Implement
 functions for reading and setting GPIO pins
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

On Mon, 2021-08-16 at 12:27 +0200, Maciej Machnikowski wrote:
> Implement ice_aq_get_gpio and ice_aq_set_gpio for reading and
> changing
> the state of GPIO pins described in the topology.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---

<snip>

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 5822589aebdc..d1b81e7fbef4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4806,6 +4806,64 @@ ice_aq_get_driver_param(struct ice_hw *hw,
> enum ice_aqc_driver_params idx,
>  	return 0;
>  }
>  
> +/**
> + * ice_aq_set_gpio
> + * @hw: pointer to the hw struct
> + * @gpio_ctrl_handle: GPIO controller node handle
> + * @pin_idx: IO Number of the GPIO that needs to be set
> + * @value: SW provide IO value to set in the LSB
> + * @cd: pointer to command details structure or NULL
> + *
> + * Sends 0x06EC AQ command to set the GPIO pin state that's part of
> the topology
> + */
> +enum ice_status
> +ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
> bool value,
> +		struct ice_sq_cd *cd)
> +{
> +	struct ice_aqc_gpio *cmd;
> +	struct ice_aq_desc desc;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_gpio);
> +	cmd = &desc.params.read_write_gpio;
> +	cmd->gpio_ctrl_handle = gpio_ctrl_handle;
> +	cmd->gpio_num = pin_idx;
> +	cmd->gpio_val = value ? 1 : 0;
> +
> +	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
> +}
> +
> +/**
> + * ice_aq_get_gpio
> + * @hw: pointer to the hw struct
> + * @gpio_ctrl_handle: GPIO controller node handle
> + * @pin_idx: IO Number of the GPIO that needs to be set
> + * @value: IO value read
> + * @cd: pointer to command details structure or NULL
> + *
> + * Sends 0x06ED AQ command to get the value of a GPIO signal which
> is part of
> + * the topology
> + */
> +enum ice_status
> +ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
> +		bool *value, struct ice_sq_cd *cd)
> +{
> +	struct ice_aqc_gpio *cmd;
> +	struct ice_aq_desc desc;
> +	enum ice_status status;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_gpio);
> +	cmd = &desc.params.read_write_gpio;
> +	cmd->gpio_ctrl_handle = gpio_ctrl_handle;
> +	cmd->gpio_num = pin_idx;
> +
> +	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
> +	if (status)
> +		return status;
> +
> +	*value = !!cmd->gpio_val;
> +	return 0;
> +}

This introduces new warnings:
> ../drivers/net/ethernet/intel/ice/ice_common.c:4828:31: warning:
incorrect type in assignment (different base types)
> ../drivers/net/ethernet/intel/ice/ice_common.c:4828:31:    expected
restricted __le16 [usertype] gpio_ctrl_handle
> ../drivers/net/ethernet/intel/ice/ice_common.c:4828:31:    got
unsigned short [usertype] gpio_ctrl_handle
> ../drivers/net/ethernet/intel/ice/ice_common.c:4856:31: warning:
incorrect type in assignment (different base types)
> ../drivers/net/ethernet/intel/ice/ice_common.c:4856:31:    expected
restricted __le16 [usertype] gpio_ctrl_handle
> ../drivers/net/ethernet/intel/ice/ice_common.c:4856:31:    got
unsigned short [usertype] gpio_ctrl_handle

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
