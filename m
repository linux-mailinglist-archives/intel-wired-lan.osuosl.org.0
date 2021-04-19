Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA9A364A1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Apr 2021 20:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21031837C4;
	Mon, 19 Apr 2021 18:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6INjh7P6QhVS; Mon, 19 Apr 2021 18:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EEC483065;
	Mon, 19 Apr 2021 18:51:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2871BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Apr 2021 18:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37CC783760
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Apr 2021 18:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ZEFo0AQX6M4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Apr 2021 18:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BFAF83065
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Apr 2021 18:51:14 +0000 (UTC)
IronPort-SDR: 5I+1FQJEpI2SGJqlZ4QGFIxuZrdtMLkbmReUcspOUOLqaxRZDHuvAymvYWhY8jNjIy5JRyHbrO
 elMwG/DnmXpw==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="215963045"
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="215963045"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 11:51:09 -0700
IronPort-SDR: yaPVUHCq7XPmEEllDYh/YFW1PYdICLme2d6WxaRDv1Y2JUgdiadBGMbAWmamLNaii074taRSAP
 YHDyLP2htx0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="616681879"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 19 Apr 2021 11:51:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 19 Apr 2021 11:51:08 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 19 Apr 2021 11:51:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 19 Apr 2021 11:51:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 19 Apr 2021 11:51:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REIuXbZ7N0Fep1BWbvW3v62bURbTiLMNfTalzraBU9e7a37fQLvk5XTeRnWqyUBY2H71fCt7tzPZ9v+7yL466x0rEIl9TXeLh4koRwgNK1XUmUDXKOmWwJkbyybS7nz+3merU5cbAHc84uJfA4vz74ELau5LftqwLVbrBhYwE/wK9TKLe+g7VIxDlMDEg8XCchFfDBtViIqQznOdKdcuE0PZAR/OHhuJkevUCsMeCSDI3e7TEzjyofxCPCyZjnNn/icVmFibAslLYnl9gl6uxzS/6zwn0b+LAa8G7Ce7KX1WDjpDEImbhJTlAqOq8wNY+r51eDNeCOoPpguSZry+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ll0rHw/vi/8M0zYcU6yoYfrwcb9G+4RnRwnxPkHqV8E=;
 b=bpHFFKefiPRR2hzUx07KbcTi4xA2keQtqq9C2eVfYeKrbVs4RweAsS2Wo1fVGovBoFd5Lf9nNrvmXR+CfpFs7wxRlYI09Fh9qIYspc8gaFqfa4+QhaaZLr4PC7J488wagzQEWiV5VSRzdN5zmM2moQArwDFsRmGa5uh0MB3jdqjxG5g/4vvuzXQhEzRKu7wtPUo5dJ9VXfmHebBD9w8LaRn+/mcY3z1R6vwrpSnanoMVOIGwWCMym8zejGYfi+ZHbYd1ivu5frf7ndPgHviwRiHDB1lV1E5XVzM+8jZZlXaz6jRVe6Yd9jPkT3HAz5LHJiwf3/Hn/OJH0tWkGXdnqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ll0rHw/vi/8M0zYcU6yoYfrwcb9G+4RnRwnxPkHqV8E=;
 b=Cpzm4lIpwyITH9X/YDn63iCHncZ/iWYRGO6kflSTMt4IeTwVGjnFo8JM1UrB64I0X2eNsd2tCxqMr52mdMIDgIFL7fXI0zzXSfFBRSPh4NUQ9ZH5upCwt97QqjOa7qWn6Yf/osFVLAJRPuI0z0hrgrbHAdywzILOIX/3xECJzOc=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2309.namprd11.prod.outlook.com (2603:10b6:910:1a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Mon, 19 Apr
 2021 18:51:06 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Mon, 19 Apr 2021
 18:51:06 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
 functions
Thread-Index: AQHXD5F7oMeouaGdOEy/8E+AYJRFuaq8ep3A
Date: Mon, 19 Apr 2021 18:51:06 +0000
Message-ID: <CY4PR11MB15763B5CAEF23078CCA36482AB499@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-2-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 490100a4-0e17-489d-12a1-08d9036416d9
x-ms-traffictypediagnostic: CY4PR1101MB2309:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB23099EEBF8B1A42F7C01A61AAB499@CY4PR1101MB2309.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:199;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KH7ViwtG0zB1t7v5j7gOwR2lHQ8Y+j51krPHtfeJ1EkdRgWG5yABXsKhyq3nWsV8Mkq0/S3Vnf2yq37tW3CatsaKPJF0cWdvECZWeU5cLknRzER0FGsnlcwidj16EoKygdbYll9bV3eeUQVGX7KjxeN/B9Zc1AAPQYJVK4n5RlEHd1ZDKTRGERO92/FnxjVlAKK4MVkB33ejOPBfqMHKzc0hMEJk+0UBN3zuQoQZ93wdiT3aQcihkJF+P+qgA6XozBKmt+K6bHrBQDBjLIYMUoSeRqVFlMWhjbglyR9TGdqMeDXl57xCG0mfnN7lsAoXfmqb1zMhXL41PyDaJpRE0OhmwLOzJnM5nymvPY0s3XBv5EVXd4nsU0L5Us17zJ1CllSJJJ9lGNx8dL1RdjLr5+d20YbAjz3WOCoHenFfivyH4TMOXfZ/aMe22hOUpsTVThTEIM/fn0BqxyCTGD9Srj8zk0GLqNNv+/WE4TqYSsz2lWmnYEhWXsEXZ/mkkVqdZMbzEA8kIGxhLXZzMfA/Mucycu3kkI9eLKxVGCXXnkObcfLjED85YFpjmvgNmVqxT4MK/5YNKIW5mno6XImhCc9MgREgySkpvC7XJr4tzJg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(39860400002)(396003)(136003)(33656002)(52536014)(71200400001)(6506007)(316002)(26005)(66476007)(53546011)(110136005)(186003)(8936002)(8676002)(30864003)(122000001)(83380400001)(478600001)(2906002)(66556008)(7696005)(64756008)(66446008)(86362001)(76116006)(55016002)(66946007)(5660300002)(9686003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?rwkhIBhHjGN+07/ucbbkGnngisSSxnlrShekfipFo+8P7Tr0QJfNQNpJmXoS?=
 =?us-ascii?Q?oXUmOP0yvx8PCc5bFdaxCqc5o2NiaFlM/oiiXtBrHPjLe4sfIfPfujfVj5ot?=
 =?us-ascii?Q?J+sNhK9Tz0JZ/cMEoFU8Pe3/y5YVrP2yr9Ndyv2kyh+nm7azYxVrOhnZ6Y2/?=
 =?us-ascii?Q?Nx4g4HunzwNS3YxYXlhXF4M2z7Uogvgye/N7HcSTgIVYKEXjPbMcW/uLWOYq?=
 =?us-ascii?Q?/eOea7qLeZtMc8FKAWCH92ntYVAlWfDGcBuGiIdA8yujCpj6nld9RQhYqlSh?=
 =?us-ascii?Q?ySGuYWJ5RE1Z/unlArkZxwt8ZKk5LAYsPtQ4+Zj7NZ8r1wHGCSnq+UnEie1I?=
 =?us-ascii?Q?yuEzeDNM9Di821ujwa2kkLNsUEWL7dVJzVhqPKgQ+d7uN45F1Wl4XEXb5EW2?=
 =?us-ascii?Q?tRhBZnZBMqKQzdIyZFs4JeRoHBrWXppioXCvxDbXdPsM7uNSJgA1sR1dgDhK?=
 =?us-ascii?Q?bcK61B2fc0K06uOC2O3LJ6XqV1Oc33CPJTwKpr0FAW/Hrg/Cwz5yCgAPHwwN?=
 =?us-ascii?Q?ckqybWC95FsnhDgBvv+vd+9VoaoetHq1jDIv6U60fFVKCV6XjGhmTvrutZBv?=
 =?us-ascii?Q?tesDyKxo4ojgPrD89hZfVs8XSNXZvSdZtzACOvtCQfKmJgHqVjMPRi2aPWOZ?=
 =?us-ascii?Q?qiQQpKjdbFI0/TzYrmk2ZaMWjPudmramKi0zrFJA5UUx+lapXDvblbuEvoOo?=
 =?us-ascii?Q?UszZFaDhxq1dd9sJ/sJ6k4ATeuZ/Xf+qarVp8SVFxmyJ0H1IvVtHmjODLLR3?=
 =?us-ascii?Q?SL3KWoDJdzEB+HeSPOAFE5UNFxugGJ4RLtwzjNe+4FyhkVLli2EKqX8XzgEo?=
 =?us-ascii?Q?0c7HHLQOzfLLk+KBhXnPcEf/iuh5dUTQKBOW20Elv4tUl+gB6fI0z2JbtMPb?=
 =?us-ascii?Q?Fou/muSB1Dkupy9UrR5QBIvc38/SxP7CE0jtmF8z/sEk9kVCLq9U0UK0cnS3?=
 =?us-ascii?Q?FuHP/TffRC/7OIf+M29ztGf6nPigB3pDq458qJ/oJ/PndHAMlW8G0cUH7jdu?=
 =?us-ascii?Q?tLdx2iDuL2iQPNDYSr2HfRrGFJ26qEYLqKF0QGZfJRHIz6tfzn1UhRxJxuLR?=
 =?us-ascii?Q?muNjjqi8d/tbTURt3xQuEZfRLhxdcHuRSNgcWYXMIvEpAjfpQTwINqNiSm4e?=
 =?us-ascii?Q?5b5Y8T8amgSHctieQpmxuJ6NwC4FwU8reI7m4xir8LzAgDLwofHq/A3UF0vn?=
 =?us-ascii?Q?wVSAgnaTUtTsOwbgjXCvjEIg7+XtWh137kRYIpsYcQ0iZDYg2uO6fOFnxyix?=
 =?us-ascii?Q?6A9f5LVPQ/R32FgXIm3repniP4tA9Kqwo+JJvgo8JbALSLiJRTcB5Ilki1am?=
 =?us-ascii?Q?axIyaPHC1sfybJUM6uYxPfKX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 490100a4-0e17-489d-12a1-08d9036416d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2021 18:51:06.3674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GX4GycaZmo8KDIPoLbCPZP6iqPyYQRZB51/tKabXYCpspaAb+ZOyKisQXZEg25Psealm/3ht6mGMh4uF93w5irUOlSkTiO2Gpln2arQehRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2309
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
 functions
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: wtorek, 2 marca 2021 19:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
> functions
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Some of the promiscuous mode functions take a boolean to indicate
> set/clear, which affects readability. Refactor and provide an interface for the
> promiscuous mode code with explicit set and clear promiscuous mode
> operations.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c     |  56 +++++++
>  drivers/net/ethernet/intel/ice/ice_fltr.h     |  10 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  51 ++++---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 137 +++++++-----------
>  4 files changed, 152 insertions(+), 102 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c
> b/drivers/net/ethernet/intel/ice/ice_fltr.c
> index 2418d4fff037..2b3a86167991 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fltr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
> @@ -46,6 +46,62 @@ ice_fltr_add_entry_to_list(struct device *dev, struct
> ice_fltr_info *info,
>  	return 0;
>  }
> 
> +/**
> + * ice_fltr_set_vlan_vsi_promisc
> + * @hw: pointer to the hardware structure
> + * @vsi: the VSI being configured
> + * @promisc_mask: mask of promiscuous config bits
> + *
> + * Set VSI with all associated VLANs to given promiscuous mode(s)  */
> +enum ice_status ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct
> +ice_vsi *vsi, u8 promisc_mask) {
> +	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
> }
> +
> +/**
> + * ice_fltr_clear_vlan_vsi_promisc
> + * @hw: pointer to the hardware structure
> + * @vsi: the VSI being configured
> + * @promisc_mask: mask of promiscuous config bits
> + *
> + * Clear VSI with all associated VLANs to given promiscuous mode(s)  */
> +enum ice_status ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw,
> +struct ice_vsi *vsi, u8 promisc_mask) {
> +	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true); }
> +
> +/**
> + * ice_fltr_clear_vsi_promisc - clear specified promiscuous mode(s)
> + * @hw: pointer to the hardware structure
> + * @vsi_handle: VSI handle to clear mode
> + * @promisc_mask: mask of promiscuous config bits to clear
> + * @vid: VLAN ID to clear VLAN promiscuous  */ enum ice_status
> +ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8
> promisc_mask,
> +			   u16 vid)
> +{
> +	return ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid); }
> +
> +/**
> + * ice_fltr_set_vsi_promisc - set given VSI to given promiscuous
> +mode(s)
> + * @hw: pointer to the hardware structure
> + * @vsi_handle: VSI handle to configure
> + * @promisc_mask: mask of promiscuous config bits
> + * @vid: VLAN ID to set VLAN promiscuous  */ enum ice_status
> +ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8
> promisc_mask,
> +			 u16 vid)
> +{
> +	return ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid); }
> +
>  /**
>   * ice_fltr_add_mac_list - add list of MAC filters
>   * @vsi: pointer to VSI struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.h
> b/drivers/net/ethernet/intel/ice/ice_fltr.h
> index 361cb4da9b43..c79e5179a04d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fltr.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fltr.h
> @@ -6,6 +6,16 @@
> 
>  void ice_fltr_free_list(struct device *dev, struct list_head *h);  enum
> ice_status
> +ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi,
> +u8 promisc_mask); enum ice_status
> +ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi,
> +u8 promisc_mask); enum ice_status ice_fltr_clear_vsi_promisc(struct
> +ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
> +			   u16 vid);
> +enum ice_status
> +ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8
> promisc_mask,
> +			 u16 vid);
> +enum ice_status
>  ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct list_head *list,
>  			 const u8 *mac, enum ice_sw_fwd_act_type action);
> enum ice_status diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 73e328b0680b..3e5f71bf333b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -204,31 +204,46 @@ static bool ice_vsi_fltr_changed(struct ice_vsi *vsi)
> }
> 
>  /**
> - * ice_cfg_promisc - Enable or disable promiscuous mode for a given PF
> + * ice_set_promisc - Enable promiscuous mode for a given PF
>   * @vsi: the VSI being configured
>   * @promisc_m: mask of promiscuous config bits
> - * @set_promisc: enable or disable promisc flag request
>   *
>   */
> -static int ice_cfg_promisc(struct ice_vsi *vsi, u8 promisc_m, bool
> set_promisc)
> +static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  {
> -	struct ice_hw *hw = &vsi->back->hw;
> -	enum ice_status status = 0;
> +	enum ice_status status;
> 
>  	if (vsi->type != ICE_VSI_PF)
>  		return 0;
> 
> -	if (vsi->num_vlan > 1) {
> -		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
> -						  set_promisc);
> -	} else {
> -		if (set_promisc)
> -			status = ice_set_vsi_promisc(hw, vsi->idx,
> promisc_m,
> -						     0);
> -		else
> -			status = ice_clear_vsi_promisc(hw, vsi->idx,
> promisc_m,
> -						       0);
> -	}
> +	if (vsi->num_vlan > 1)
> +		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
> promisc_m);
> +	else
> +		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
> +promisc_m, 0);
> +
> +	if (status)
> +		return -EIO;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_clear_promisc - Disable promiscuous mode for a given PF
> + * @vsi: the VSI being configured
> + * @promisc_m: mask of promiscuous config bits
> + *
> + */
> +static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m) {
> +	enum ice_status status;
> +
> +	if (vsi->type != ICE_VSI_PF)
> +		return 0;
> +
> +	if (vsi->num_vlan > 1)
> +		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw,
> vsi, promisc_m);
> +	else
> +		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +promisc_m, 0);
> 
>  	if (status)
>  		return -EIO;
> @@ -325,7 +340,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  			else
>  				promisc_m = ICE_MCAST_PROMISC_BITS;
> 
> -			err = ice_cfg_promisc(vsi, promisc_m, true);
> +			err = ice_set_promisc(vsi, promisc_m);
>  			if (err) {
>  				netdev_err(netdev, "Error setting Multicast
> promiscuous mode on VSI %i\n",
>  					   vsi->vsi_num);
> @@ -339,7 +354,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  			else
>  				promisc_m = ICE_MCAST_PROMISC_BITS;
> 
> -			err = ice_cfg_promisc(vsi, promisc_m, false);
> +			err = ice_clear_promisc(vsi, promisc_m);
>  			if (err) {
>  				netdev_err(netdev, "Error clearing Multicast
> promiscuous mode on VSI %i\n",
>  					   vsi->vsi_num);
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 43d309aa9efe..c30b1dd9ac29 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -37,37 +37,6 @@ static int ice_check_vf_init(struct ice_pf *pf, struct
> ice_vf *vf)
>  	return 0;
>  }
> 
> -/**
> - * ice_err_to_virt_err - translate errors for VF return code
> - * @ice_err: error return code
> - */
> -static enum virtchnl_status_code ice_err_to_virt_err(enum ice_status
> ice_err) -{
> -	switch (ice_err) {
> -	case ICE_SUCCESS:
> -		return VIRTCHNL_STATUS_SUCCESS;
> -	case ICE_ERR_BAD_PTR:
> -	case ICE_ERR_INVAL_SIZE:
> -	case ICE_ERR_DEVICE_NOT_SUPPORTED:
> -	case ICE_ERR_PARAM:
> -	case ICE_ERR_CFG:
> -		return VIRTCHNL_STATUS_ERR_PARAM;
> -	case ICE_ERR_NO_MEMORY:
> -		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
> -	case ICE_ERR_NOT_READY:
> -	case ICE_ERR_RESET_FAILED:
> -	case ICE_ERR_FW_API_VER:
> -	case ICE_ERR_AQ_ERROR:
> -	case ICE_ERR_AQ_TIMEOUT:
> -	case ICE_ERR_AQ_FULL:
> -	case ICE_ERR_AQ_NO_WORK:
> -	case ICE_ERR_AQ_EMPTY:
> -		return VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
> -	default:
> -		return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> -	}
> -}
> -
>  /**
>   * ice_vc_vf_broadcast - Broadcast a message to all VFs on PF
>   * @pf: pointer to the PF structure
> @@ -1049,45 +1018,48 @@ static void ice_clear_vf_reset_trigger(struct
> ice_vf *vf)
>  	ice_flush(hw);
>  }
> 
> -/**
> - * ice_vf_set_vsi_promisc - set given VF VSI to given promiscuous mode(s)
> - * @vf: pointer to the VF info
> - * @vsi: the VSI being configured
> - * @promisc_m: mask of promiscuous config bits
> - * @rm_promisc: promisc flag request from the VF to remove or add filter
> - *
> - * This function configures VF VSI promiscuous mode, based on the VF
> requests,
> - * for Unicast, Multicast and VLAN
> - */
> -static enum ice_status
> -ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
> -		       bool rm_promisc)
> +static int ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi
> +*vsi, u8 promisc_m)
>  {
> -	struct ice_pf *pf = vf->pf;
> -	enum ice_status status = 0;
> -	struct ice_hw *hw;
> +	struct ice_hw *hw = &vsi->back->hw;
> +	enum ice_status status;
> 
> -	hw = &pf->hw;
> -	if (vsi->num_vlan) {
> -		status = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_m,
> -						  rm_promisc);
> -	} else if (vf->port_vlan_info) {
> -		if (rm_promisc)
> -			status = ice_clear_vsi_promisc(hw, vsi->idx,
> promisc_m,
> -						       vf->port_vlan_info);
> -		else
> -			status = ice_set_vsi_promisc(hw, vsi->idx,
> promisc_m,
> -						     vf->port_vlan_info);
> -	} else {
> -		if (rm_promisc)
> -			status = ice_clear_vsi_promisc(hw, vsi->idx,
> promisc_m,
> -						       0);
> -		else
> -			status = ice_set_vsi_promisc(hw, vsi->idx,
> promisc_m,
> -						     0);
> +	if (vf->port_vlan_info)
> +		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m,
> +						  vf->port_vlan_info &
> VLAN_VID_MASK);
> +	else if (vsi->num_vlan > 1)
> +		status = ice_fltr_set_vlan_vsi_promisc(hw, vsi, promisc_m);
> +	else
> +		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m,
> 0);
> +
> +	if (status && status != ICE_ERR_ALREADY_EXISTS) {
> +		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter
> promiscuous mode on VF-%u failed, error: %s\n",
> +			vf->vf_id, ice_stat_str(status));
> +		return ice_status_to_errno(status);
>  	}
> 
> -	return status;
> +	return 0;
> +}
> +
> +static int ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi
> +*vsi, u8 promisc_m) {
> +	struct ice_hw *hw = &vsi->back->hw;
> +	enum ice_status status;
> +
> +	if (vf->port_vlan_info)
> +		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m,
> +						    vf->port_vlan_info &
> VLAN_VID_MASK);
> +	else if (vsi->num_vlan > 1)
> +		status = ice_fltr_clear_vlan_vsi_promisc(hw, vsi,
> promisc_m);
> +	else
> +		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m,
> 0);
> +
> +	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
> +		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter
> promiscuous mode on VF-%u failed, error: %s\n",
> +			vf->vf_id, ice_stat_str(status));
> +		return ice_status_to_errno(status);
> +	}
> +
> +	return 0;
>  }
> 
>  static void ice_vf_clear_counters(struct ice_vf *vf) @@ -1445,7 +1417,7 @@
> bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
>  			promisc_m = ICE_UCAST_PROMISC_BITS;
> 
>  		vsi = pf->vsi[vf->lan_vsi_idx];
> -		if (ice_vf_set_vsi_promisc(vf, vsi, promisc_m, true))
> +		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
>  			dev_err(dev, "disabling promiscuous mode
> failed\n");
>  	}
> 
> @@ -2491,10 +2463,10 @@ bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
> static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)  {
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> -	enum ice_status mcast_status = 0, ucast_status = 0;
>  	bool rm_promisc, alluni = false, allmulti = false;
>  	struct virtchnl_promisc_info *info =
>  	    (struct virtchnl_promisc_info *)msg;
> +	int mcast_err = 0, ucast_err = 0;
>  	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
>  	struct device *dev;
> @@ -2591,24 +2563,21 @@ static int
> ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
>  			ucast_m = ICE_UCAST_PROMISC_BITS;
>  		}
> 
> -		ucast_status = ice_vf_set_vsi_promisc(vf, vsi, ucast_m,
> -						      !alluni);
> -		if (ucast_status) {
> -			dev_err(dev, "%sable Tx/Rx filter promiscuous mode
> on VF-%d failed\n",
> -				alluni ? "en" : "dis", vf->vf_id);
> -			v_ret = ice_err_to_virt_err(ucast_status);
> -		}
> +		if (alluni)
> +			ucast_err = ice_vf_set_vsi_promisc(vf, vsi, ucast_m);
> +		else
> +			ucast_err = ice_vf_clear_vsi_promisc(vf, vsi,
> ucast_m);
> 
> -		mcast_status = ice_vf_set_vsi_promisc(vf, vsi, mcast_m,
> -						      !allmulti);
> -		if (mcast_status) {
> -			dev_err(dev, "%sable Tx/Rx filter promiscuous mode
> on VF-%d failed\n",
> -				allmulti ? "en" : "dis", vf->vf_id);
> -			v_ret = ice_err_to_virt_err(mcast_status);
> -		}
> +		if (allmulti)
> +			mcast_err = ice_vf_set_vsi_promisc(vf, vsi,
> mcast_m);
> +		else
> +			mcast_err = ice_vf_clear_vsi_promisc(vf, vsi,
> mcast_m);
> +
> +		if (ucast_err || mcast_err)
> +			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  	}
> 
> -	if (!mcast_status) {
> +	if (!mcast_err) {
>  		if (allmulti &&
>  		    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf-
> >vf_states))
>  			dev_info(dev, "VF %u successfully set multicast
> promiscuous mode\n", @@ -2618,7 +2587,7 @@ static int
> ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
>  				 vf->vf_id);
>  	}
> 
> -	if (!ucast_status) {
> +	if (!ucast_err) {
>  		if (alluni && !test_and_set_bit(ICE_VF_STATE_UC_PROMISC,
> vf->vf_states))
>  			dev_info(dev, "VF %u successfully set unicast
> promiscuous mode\n",
>  				 vf->vf_id);

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
