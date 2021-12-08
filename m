Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF3A46CE9E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CA3960F1C;
	Wed,  8 Dec 2021 08:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wLXeQ0RY_RvY; Wed,  8 Dec 2021 08:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 672B6606B3;
	Wed,  8 Dec 2021 08:04:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 938C71BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F68380D05
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NvEeefHzft85 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:03:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB51A80CEA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:03:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236518805"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="236518805"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="679807670"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 08 Dec 2021 00:03:53 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:03:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:03:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 00:03:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 00:03:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJ8gYprfle+PCQG6BQkspuBIS4oN9JAWXYy/4xTLlymsTgu/EPsffVWCrjkE/e9yyJaqhFQG7ZO5NCyLMfVjbyTaSoBqGASs8NtbvSCq7a3kzX7Ouc4oIeY5HcaLR2ag4e4SSp0mEMwFYcW1c8Vz1XAVK29I5nQLuMA0R2qJ6X/LNsPo+iU+cU+FgyCEAfRifLq5jrZvgoJVgawKj1keo1z/Rfq5cGdZd2wBKaANo3S7nCVVbXyQ3Id7LWpF3shEYlwfCCGPyVFZzlu5u1wq3W5hwnVfLJC5cEqb7Dlk4O0Od5oN9JENz/suhFKVY2i0Bj/90Bd01OL4aCabASa1xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwBVef3rYttCPB2CpH6xcQrdFTwL2AFU16aUvtceF2c=;
 b=ZAcjmMD0OEUo5oCnsfjlOVhC7iNVHvDoBp8RY5/18UjFEsdRYcXKz6oGXAcaT+i5l1nmNJgKPnpUPhTSPUNFqthuJb3xEtI9lOXqXP06is3CODWcXCz3L6Qz7GnJLTRKKknAIKOecQAcH9rVpK5caekhrJGbo5YCfv2ed4Y1nS1+wTnsrHSA8NWK4OvsPqGGtkfPVqYYNRl4+KlZ/HGN6CqHhDu3XI7e9f8m4CJGmGZdw4w4RaI8hVKAsKocXo8569+jAoJi6mJiTt/gA/ydEjLKZX/+1dTozG0cEoC5P+JpMu3Th0hpZIjuf0gq5vwGtpKoLI7xZd/PEcaJe0Pw9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwBVef3rYttCPB2CpH6xcQrdFTwL2AFU16aUvtceF2c=;
 b=d4NhIMb8ztVd7rMx5qK1RE4/gkTHcMqaHj86KO2v+9iVNO5oPxOm/AqDggMBEEIK2BxzD6a6rxgFtoi7zGplQmszaPw4qzV9s3yqxg7+ulYDluQL9eVw8zgzzEOgReJjVURjAiCfKI2wOMbFHOVDsST0Tyl2qrjf29rK+IVJfmw=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5592.namprd11.prod.outlook.com (2603:10b6:8:35::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.21; Wed, 8 Dec 2021 08:03:36 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 08:03:36 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 6/6] iavf: Restrict maximum
 VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2
Thread-Index: AQHX5X+0Ow/0V7j3x027lhrhI6dMq6woSQ5A
Date: Wed, 8 Dec 2021 08:03:36 +0000
Message-ID: <DM8PR11MB56217286F2406A51C5F5784FAB6F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
 <20211130001604.22112-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20211130001604.22112-7-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 6c3d8619-a280-4ff8-8341-08d9ba213cd2
x-ms-traffictypediagnostic: DM8PR11MB5592:EE_
x-microsoft-antispam-prvs: <DM8PR11MB559201F6E0C48D36C2E2E7B8AB6F9@DM8PR11MB5592.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B0GKboOxgVUXPB/jMteOGSgWyZpFasAQP+sPr0mjB5iHNVn+xMw5iyU+mrclcT9qFxFEHgi/UhUA3UJMIfwkrvx/SbYJU5tIq39n0YCi9OFz1oUNs2vrhWf0Cne15tkLTzCcRsqMYhle/fn3jCXg/hMKgji5qoDPHHnmW3a9te8ZXI6veCrC1fDrN+IxlyN4r0Ld3QGhLwCcfXH6xn8n4841wXu3uKGJhHMvgSklZjLcTgEJF7fOVja8uS9u9X0Mk0PUKDkn3UqAGRShcYdAn6KttkihbP4IaWoXCHVaM5ZqfWD1IIcmWsv5J6J2M4mDvknJ5uBgWFgol+EqwKd/yqQb7uKuVpeDzm+KEA4Y3yGucOXi/2N4xms8rWlZIqrKF8lBNYTv7ru2Q+OqEgdns+kLFwlX603KwERmIRtRo5zqXawgR+JX0akaxD4s189VbTyPh/4ZrY7GuQIxuRucngsa/B7iapkGPQ1Pl3JnsTmbcpewBN1keXRjISGICXh0I+1k54apdWFiL/XAlt5lqtyhQ1WCgT5ZdWII/bv/26yvLY8/njMzpPhnzzh7ThE/R5iP88inYGr7tgi8/IcuuPAXCs/BheRdFsTOLCVhwaKVg8NuAh4MHWRSBNwvP1FFsAwLLHJz1QWUnkvejBtuM16Dex97VXgbLlWpGn5mhAN+j3IhZw1seBN6nXqc6ZEhHzviIGK2t86BzpW+VZtgsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(52536014)(7696005)(110136005)(2906002)(71200400001)(82960400001)(83380400001)(316002)(55016003)(38070700005)(9686003)(186003)(5660300002)(508600001)(122000001)(86362001)(38100700002)(66446008)(33656002)(64756008)(76116006)(26005)(8676002)(66476007)(66556008)(66946007)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/iDqHuYOR8Ib8HFuN7ODB4Yhld94Es9Wnl8ce3+1nA+illxG4ifkUfPTIMCx?=
 =?us-ascii?Q?i/9SVeTbzeLN+qek4V+cM4mHdrnOhV5ViIZ/upgP1RrighGjsxQvqZ9/kv8C?=
 =?us-ascii?Q?YT1Z39Nltx7bcek6fCmNEkD0iqAqNKOdtJKJV8mZ+D6+pziqzIx5wEhT0jMX?=
 =?us-ascii?Q?yyPVWslPuPjbiEnAuTPumpbt0rGm+2YprDgWAXUQpHDlXblUWkhbsPac8jim?=
 =?us-ascii?Q?fdvkhi/6nd6+48ImqDpfhI7tMNufYaXBuwhO8TT4GwwWFPjoDX3xLLDpVcrM?=
 =?us-ascii?Q?dT0GBBVTUvHCAUCNHNYLA4ElJHXdBZK75fWVONfTNTkWTTyIztNOdg7OoNDN?=
 =?us-ascii?Q?+b7EyuLZ2eG0nvSABQSGcDRagw3zfSbZXZiVPoInsz43GTUwv2J5/8uPkhk+?=
 =?us-ascii?Q?t/3OCttQall3MBtazBEf9UKxn2ae5ShN5V8uzj8FwcIcroKFxIaKlePoBpSw?=
 =?us-ascii?Q?N9WHd61Q2R6uYdYuFa4H4tnLJKOH42AsJha+Grun/mU9JsFTY1GuxDF8QvGD?=
 =?us-ascii?Q?LXc2IvuczyAuPraFb1qTSnq0uXMwtVSZ8aeuPROdxgUBHKg5+9toGkCWheJe?=
 =?us-ascii?Q?P54GRFHtRARMUbijtyMD79THfKmUsQEHFqMOiAVULQ7JMurmg8Lg0DwKsvYW?=
 =?us-ascii?Q?4HxnqlPK+vLV675VHy/xiwprzfPgKO3vfbOKWBOcKD6yq5B5SSmgRCbff+lS?=
 =?us-ascii?Q?HozXKQOLstkuEnw6DhvxRN2rX6GY414dmS6njdJbXYL3hykeNG2bx7LJO0jg?=
 =?us-ascii?Q?fRKXqxHi1X35X/wbGFq06nBJu7j2jaJK2qxOgBecDb37c2R32hkjyTDoCVdF?=
 =?us-ascii?Q?DShLTge9piTq11qxXXNJg98ORGplQmEz/rf8SBkCPhDHbuGCUpVjXoEfsi0H?=
 =?us-ascii?Q?pnbtktwzJPQKR8Q4nDH2V3YNDr4odIzTx9SpCiePwmuuEJxwpbacHdpE4hm5?=
 =?us-ascii?Q?ezdPHaFvwP+YNqgjb1zkXymHnVmPAVKnfFyHDVRMu9oTAs4rkt8qb7AgWQ+T?=
 =?us-ascii?Q?T0JfJ/KHFVnFsavHQwkNiijCL18qE6poPPI8F3QMpEsMddGis6j4BuXRFb0P?=
 =?us-ascii?Q?7W/+CSgg48KOzuyYnxhjKsSI15UhO0rvRv9f3/ceKTgnvT86iXkZqEMONC8F?=
 =?us-ascii?Q?RBcp8Ika6m566Vayohx5rX/FRG+61DbQMeWaQOf6MV02eKbRUspn4CXqlQvE?=
 =?us-ascii?Q?bqgpuIrVzziyc+NfQvV1D7XXPEOwP+h5sKf7LdaDf1maAgauJCqp5COXGcGw?=
 =?us-ascii?Q?KpUyq0xF2M5CE7kiTxBDAGGJSa5eYyyg5tHmGx4L+RY4pPw4guBrxk7YL7jf?=
 =?us-ascii?Q?wEe8TsceoR4W+LEY48q12xaRbGb0dZJQJhY60ovCMQwAUlsJmjSUbs50P8vO?=
 =?us-ascii?Q?I8enRB+IWFv7Iu4q+5bNbNaC6cclOqhXtmU85CIhp0UZnF/9xL67cPlAIVD4?=
 =?us-ascii?Q?DXlL5B4zMMnsFEY2GMBSnqg1TCd74BmsrKuOkTmmP3Og9IvMy6l3Cq4gBNE5?=
 =?us-ascii?Q?DOJuHRZcXvHnjLcWV3fvJRB9DqyUjhWOzNY7UOiSCr3KT0CgpI53FP0gGTyN?=
 =?us-ascii?Q?PqPjEcsu8kgI4TpuRa52vN/8cv+iD6bwN6YTUeEgDuGQENshtdPpYvZKsOc3?=
 =?us-ascii?Q?kFGRkkhY/78EFZVWE/senRBS4ghNqKc+1RmEjaKRYYC1PBk+jZfpEzCq9Ogd?=
 =?us-ascii?Q?UiBl2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c3d8619-a280-4ff8-8341-08d9ba213cd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 08:03:36.5925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3fnKZmR1qvqQn7sy/o1f2fkQ/ou9TBknHOsrMofg6TfCKCm82o+fTiL7lCIs+Z+X4HfDfnc/Xg3HBvM6d9RDxNZ2gNqZct9u43KjPwFNLjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5592
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/6] iavf: Restrict
 maximum VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2
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
> Subject: [Intel-wired-lan] [PATCH net-next v2 6/6] iavf: Restrict maximum
> VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> For VIRTCHNL_VF_OFFLOAD_VLAN, PF's would limit the number of VLAN
> filters a VF was allowed to add. However, by the time the opcode failed, the
> VLAN netdev had already been added. VIRTCHNL_VF_OFFLOAD_VLAN_V2
> added the ability for a PF to tell the VF how many VLAN filters it's allowed to
> add. Make changes to support that functionality.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 50 +++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 8bdadf6a3c0c..cb48a4ecd221 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
