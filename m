Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 639AD46CEA7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:07:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0561E60F02;
	Wed,  8 Dec 2021 08:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f4uAFSXIrZmN; Wed,  8 Dec 2021 08:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA43A606B3;
	Wed,  8 Dec 2021 08:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A32A11BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F8C3401CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKSHCiOw-wXE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:07:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90A0B40147
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:07:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="237588047"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="237588047"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="606163266"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2021 00:07:32 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:07:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 00:07:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 00:07:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LfjAE88UmNcDMqwjHoJhEZyyOjIUw4W0RysifnzwhKjx99gEuVXlX7b/U1FakoJCWp3lk4wBuB9AEwEPNRAqrj3Y6Eh/wiT/0RVuBlvKZY4lRuBnPGkjZhpvDrSX2J/3yTsQk0kKLDQT8wD67D5NJM1dq0XP8+ZksOG+hyGLrVLYLKuQBPepL3l09lGgCML6VkrwxOqKJupcyjwo43s61y8NgA62zhPVB+TfnM6YEkKZmqoOBAB4rqbQrofv6vEnU5k7/Fge5/AVRzJH5TVNMuOdR6oumBTPGtzjbmqYN4UU+twC5+LP3wZQ+dFVeSefwtCtaOjb5JsmGQmTpCNG+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HjMS0hHM0Rrn1JwPaQ9NcyHNwXVpgg9zYIgkAqgFi7s=;
 b=a68pyc9s74ZxnXRSCcNff9jDU7pv8TKfgwXsb8YbtQT48iFBDAqJZyvZ7uOQ+t/D0KVIZe+ED8nixVyB/TDosS6KISQTy6yBKUaSno1D/LorjXOKRyCwK+frSRkdhKXZAuOkJjbEBfXG/ImXpc6GdhB0O+rvnv+NtKSZWNnFuWfoL8FuthCH8tPmrbO/w38ArymEKZJZQV6O2Or0al0qWXF617AVBkf6d5wCK/NT+hE4Fni48k8zixYGgzh54WKCypGtXYE1MjG/+4AwEkaQxWQrrHgzAPqWxuFa3b7tpSHV+5v4nIh04ailIBXE/sL4bqhxHmfqguEj1siQDOjsHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HjMS0hHM0Rrn1JwPaQ9NcyHNwXVpgg9zYIgkAqgFi7s=;
 b=OAYLDpUnW72dFEzv0mfRnZicjFhjfGOU4naUvXDXnO85Bmlmo/aSqpHOS21JeOEa+FDyhyc/cFxZGyCti2REyta7yGT8ac2CKHxk42wAF19DW+PwEjhagUpvI0c/3l71FsWtK+Xl6wggBOliDsxwX+1+SEqgvAVAXBo6UEkM0sA=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5672.namprd11.prod.outlook.com (2603:10b6:8:26::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.12; Wed, 8 Dec 2021 08:07:30 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 08:07:30 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
Thread-Index: AQHX5X++sYNUVeotF0i1Z4RbRoppDawoSi3A
Date: Wed, 8 Dec 2021 08:07:30 +0000
Message-ID: <DM8PR11MB56215ADA254276256B16172CAB6F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
 <20211130001604.22112-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20211130001604.22112-3-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 046105e7-c89b-4e4b-eed7-08d9ba21c82e
x-ms-traffictypediagnostic: DM8PR11MB5672:EE_
x-microsoft-antispam-prvs: <DM8PR11MB567282FC53329090C5C98391AB6F9@DM8PR11MB5672.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nSmwCi7S4kJUGB/CBTV0lh+ANAHBf7Su0iz0aSS1cvvpKqdq37vdvTBoFlDsYbPIEL10MnCf393ycL0sKTkc5aPakBxAFhf055dYFSKQS3aUGFvh2neGU1LCKHNmpclsTbhJy1GC54G1xOCrmSiQj2nroxJyEcC2CZq3KhYTT7oGQ4j2sOGz28yJ3VLn6nhhlQYk5Qo3PC8LLkcu34Hz3X01r18NwjCYTZniPBn/0i7TzmAGsGSBznTpeu+JuX9bP7G6JErXO/2TDuJ41U9jaIzn+lAXpnRSIcNd9t6dgKCQy6DJ/MXiTNvuBx9aRio7kUhSpkfEdCoVpZ/hK1+rbSmlGP3AR/G90ssZDJGuM2qoGcnYcT6DuvasV+F5A2szIsmnQZ5EJMowFcdzGBiknhkVqlWx6J1coNLKFZyVuS8QP9bQVsgYiOSLrYWxa8AvMJbshvJnD3Li70cVsCO9FZmk4H6rFyspvy/5BAvXTFRFbowYRn/MvO62tp5km2JEe3QhVtbAs06S+zjRnAzb4piQlnPa/K2OaNsfINO5wdSKpn+cHXoaGR8sfvpf/7vZ7CbI6EoGCYYPFAT/dpwjXn2uQ/+XOa3Ra6eMjTQCsUBC7rDbyZ+jMBjqZCMJsRUYOzhw14nPAG3FZnXnxrFAsqxxGrvFq9O6US36dBxcMwf7qEkFv0k/4j/zGkKzrLAtTT3GmQF21muXkDW75QeB7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(66946007)(76116006)(9686003)(5660300002)(38100700002)(66476007)(52536014)(64756008)(66446008)(66556008)(8676002)(8936002)(71200400001)(508600001)(33656002)(55016003)(86362001)(83380400001)(38070700005)(316002)(82960400001)(186003)(2906002)(26005)(7696005)(6506007)(53546011)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ria3qLGzUGSc6GPppldyF+hixsDb7E2kOS296KR/cIwZ8ZsIzyloYK0irCzk?=
 =?us-ascii?Q?aGDQokV9YAdIN1QmS84qR0ghsoTWymPKtHGnkp9Oehxjyc/7G17X2dVlhaLl?=
 =?us-ascii?Q?fNulj82x2iWYEGT4cmxBX5r4ESca8N0+NqFtYJQoZZGygU6S5ZcSDSywFVm+?=
 =?us-ascii?Q?vYqAvkaddjAPMzzv7q/fZqtRf0IJU7lBca4yrGv8bc23H47nOVfGDfldMa14?=
 =?us-ascii?Q?3KW3tJJ6nXzy8oAr1xJiV8DiT96sVZcSrPkeH/KSElxQHMd1hYIy5yKjSGmk?=
 =?us-ascii?Q?GHicFpnDLvKl9Kv5hraXznzhaF321zkVU1YXoitoa8IFap5TA8HOi+GKdEuX?=
 =?us-ascii?Q?Z8CUY2QCWvoxqqg1pLE74skdwLV8DwDhf89TwgUADX2Kk4HrobK9ovQSBunh?=
 =?us-ascii?Q?8R89tqah+UT6poySR8mffMxLGnn/RhhNeFPFQ40Fe8i5xbYM3Z8707Da+T1Y?=
 =?us-ascii?Q?lu34lz0a2M7NyncFqZ7BAY1cndpdsa7Nlk1AcqsbxKZrU2u0TGdnKqaAFbV9?=
 =?us-ascii?Q?QM4ZWDKFbpqbMcm5/PWxoRktygdHL9/DVmoc6YFYol8X6VIj3vV6ChF65YOr?=
 =?us-ascii?Q?uSFnRaQOqnYsbbZGSRSYyLFGJmGaI7mZ3QVrJP4B9pInSRCH+Fn/alUXMCjJ?=
 =?us-ascii?Q?DAn4XFSDQj+Q9nzI1C2MXVqZNUsrP8w2zdilgDtyz7MZLOA5iInbaUHztFpP?=
 =?us-ascii?Q?AxBZ+bHuPyksOjr/uPNGG0mrkz2XiyXTGV5UX/RjKqPMINebERWIrVqTyW8b?=
 =?us-ascii?Q?b3PyQzyfF7+Y5sUoSRwvjBCznvyZIrm/L4kM9US3t+WylCFRLjj0LGHHb8fM?=
 =?us-ascii?Q?tk005Zp1EpbHgPTRnVtffsJcvl7XNWUY3MijBb7NBG7bNiKOqykDk6l8CJUX?=
 =?us-ascii?Q?Agi29Hwd2DWKNnUd+t4WGZJEZ29LYo5TpP3oI7+wYAjJ7+8gbs7vDvK9Ev2P?=
 =?us-ascii?Q?JrX0JXEj8/ZmAFOYgaiLZIR3e/zluZLZJ1duCnePlt3y+MeuqBeKMXlx/IRA?=
 =?us-ascii?Q?ZGkYW02xxAuHT9jd0s+wPRyJdTbj5Gaw92PjF0v+C3Ib5ypcLyyIoqmzi4gD?=
 =?us-ascii?Q?mcJBeuhASzbj3Qyd6vLOO/xrFFAmsKH9099xuF7EjFVFYUuNvHnjWVyUFchj?=
 =?us-ascii?Q?JuS0otlbqaaAkbI/bNN95W+ZNuxjrJtfR0dSChRw1cmAD3LKbuIgBGveRbuA?=
 =?us-ascii?Q?HBl7m7fzY4C6HUlarX4rkqU+b3iVmgx9bxDLajQnVb4473RQpm+lWyYQCSCt?=
 =?us-ascii?Q?qxVcZKKflIqZeFejXOgvwYMGMqw29JnmYsUrO52HMMmAwAsGQCbgbopfT9kW?=
 =?us-ascii?Q?nL58VU9lr+73WMN+/eAJ3UQxz7RLyXL9Wv3Uex0oqNmAGirH4Odqj8xvw+88?=
 =?us-ascii?Q?s+A5Kmfe6dIctNQsk0zPPAtVde5vyeqVIROT4Ln1wLvCj1cf8FvNGKfXcab9?=
 =?us-ascii?Q?E3UwxVbncK+40BrobITLfEvpSZvD82sqAjlQflWBlTPhvd+xr5YZaIjuOggo?=
 =?us-ascii?Q?SOv6oniODhXPZeQWGy/PupZG2ZBIPMDbBMf4hXxMSzWuVLxaBVK4HHjJNVzn?=
 =?us-ascii?Q?Rkn2464Cc9RGCN3cI/glYny3a85xV/+ddyofgCtGGUnP/IpV7N4Kq+S146tB?=
 =?us-ascii?Q?efdl2CyRCLzY9Zy0UUBYsRI2kG3VVF0X88qXwk/7iFALdsIpIDDc2Qw7QIkU?=
 =?us-ascii?Q?1lCe+A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 046105e7-c89b-4e4b-eed7-08d9ba21c82e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 08:07:30.3925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anZqpyeyScgvuEDoT7Sito602EXFfDk6Yf5FBvcM8Fp47MKXUZyIdpVipzihAxmpCYKTcgAYnueZKYb9TLkypPjGToN1oXD6MMpZtZdm1Uw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
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
> Sent: wtorek, 30 listopada 2021 01:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 2/6] iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> In order to support the new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability
> the VF driver needs to rework it's initialization state machine and reset flow.
> This has to be done because successful negotiation of
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 requires the VF driver to perform a
> second capability request via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
> before configuring the adapter and its netdev.
> 
> Add the VIRTCHNL_VF_OFFLOAD_VLAN_V2 bit when sending the
> VIRTHCNL_OP_GET_VF_RESOURECES message. The underlying PF will either
> support VIRTCHNL_VF_OFFLOAD_VLAN or
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 or neither. Both of these offloads should
> never be supported together.
> 
> Based on this, add 2 new states to the initialization state machine:
> 
> __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS
> __IAVF_INIT_CONFIG_ADAPTER
> 
> The __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS state is used to
> request/store the new VLAN capabilities if and only if
> VIRTCHNL_VLAN_OFFLOAD_VLAN_V2 was successfully negotiated in the
> __IAVF_INIT_GET_RESOURCES state.
> 
> The __IAVF_INIT_CONFIG_ADAPTER state is used to configure the
> adapter/netdev after the resource requests have finished. The VF will move
> into this state regardless of whether it successfully negotiated
> VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2.
> 
> Also, add a the new flag IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS
> and set it during VF reset. If VIRTCHNL_VF_OFFLOAD_VLAN_V2 was
> successfully negotiated then the VF will request its VLAN capabilities via
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS during the reset. This is
> needed because the PF may change/modify the VF's configuration during VF
> reset (i.e. modifying the VF's port VLAN configuration).
> 
> This also, required the VF to call netdev_update_features() since its VLAN
> features may change during VF reset. Make sure to call this under rtnl_lock().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   9 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 205 +++++++++++++-----
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  78 ++++++-
>  3 files changed, 240 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index b5728bdbcf33..edb139834437 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -181,6 +181,8 @@ enum iavf_state_t {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
