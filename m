Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C32493D7A77
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jul 2021 18:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E495040225;
	Tue, 27 Jul 2021 16:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iIe0v1pyXuTI; Tue, 27 Jul 2021 16:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA37F4021F;
	Tue, 27 Jul 2021 16:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D38D1BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 16:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79F5E4021F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 16:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RyLgIsjYLtSm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jul 2021 16:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34EA240215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 16:05:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="199698412"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="199698412"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 09:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="498535031"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 27 Jul 2021 09:04:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 27 Jul 2021 09:04:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 27 Jul 2021 09:04:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 09:04:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcWnKvTKPDGxkk8qgOQ4vRIu8zofd/AI/OiUlJh2DdO5mnwW9ldoQhI9BdVkZdhi8Nv1QLzoxFBSoipu1TVmt6QCI2auF7+oNIILnUY3rpvK+IrLM+JSZzPxI+DhnBkk+JyF+lxFoLNEJfTCAW1FN2EpMMQjTzRopCrA9fT4ecip2w7Y1bvDnWdab1Z6oWlBR8EcXY/40X0UNast3bZ0YzCiv5qsTkiSVXSN4Ootrd14fFYTWo3ohsqWNnE554jGfAeGYKS63DYJgPktiqanXZ2lxCPx0pp7bYO45jWd0XjMUvhN3R2P6Qu139Cr+0KSfeIQKiTxasPf4CSyXVCIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTT2ET8AMJWuvrXN2TXdlL0PxZGmbFbkt3+vmuwler4=;
 b=mqSRuoDKvRO1senu4m3BUXzStR+qvOGVSt4N7CgkLtku2lrRvNu3asXsQgEvzPguTap8Kan8gDJf70uSZ7IQha3RUQdMa3jmNwvGZwp0M7DHiNZuc4QP2aOUi6anUV2FeDNIN+y0yDNRGgrHyaJqQIcotXPyuFRAL3AvwMMkT9c4EvCjZMAWM/FLMPi9x4tGpKax46o9rmvCwchosRwul7DTVhv0ENtm5qIElNfdF8lYQ0YiSXzGL1eFT45Rt4SCIbzVmZVZMNvD9uTrcDp4Q99315SrRFlyENB81gqZgDrbLeIDLJC5IAKQbaEwjzvqYLHdKtzbnTb0FLSLve9Q+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTT2ET8AMJWuvrXN2TXdlL0PxZGmbFbkt3+vmuwler4=;
 b=i9SYl0OjoAISGYC0ukoNAcUCVoy5ZAXblDS3w9TY/9OP+lYqt3HuraBilq4RZTyzwE+nyXncSJ+3ydImLYgJCKGgNh+Eq5AjWEJh8eWXwlLokglzLH90NbbGiR9rnXU/Ri2Nlfa6eiBYAvdSpxjLi6SjXHl7ZT1d3aDwck4BrYk=
Received: from CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14)
 by CO6PR11MB5604.namprd11.prod.outlook.com (2603:10b6:303:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Tue, 27 Jul
 2021 16:04:19 +0000
Received: from CO6PR11MB5652.namprd11.prod.outlook.com
 ([fe80::6940:a6c9:1d52:b575]) by CO6PR11MB5652.namprd11.prod.outlook.com
 ([fe80::6940:a6c9:1d52:b575%7]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 16:04:19 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>, Yuvaraj Ranganathan
 <yranganathan@juniper.net>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [E1000-devel] Traffic not passing for VLAN ID >= 32 on the I350
 SR-IOV enabled NIC
Thread-Index: AQHXgqzxV++qPwNWaU27fCWwrDJgLqtW69AwgAAQXeA=
Date: Tue, 27 Jul 2021 16:04:19 +0000
Message-ID: <CO6PR11MB56524631CBAEE3AA229AD0A5EFE99@CO6PR11MB5652.namprd11.prod.outlook.com>
References: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
 <CO6PR11MB5652E3BC545B93D49C86B3D6EFE99@CO6PR11MB5652.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB5652E3BC545B93D49C86B3D6EFE99@CO6PR11MB5652.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_Enabled=True;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_SiteId=bea78b3c-4cdb-4130-854a-1d193232e5f4;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_SetDate=2021-07-27T06:02:13.3131859Z;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_ContentBits=0;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_Method=Standard
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f0b56cc-0f4c-4957-1737-08d951183130
x-ms-traffictypediagnostic: CO6PR11MB5604:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB560417B0A0F619DF01C3E03AEFE99@CO6PR11MB5604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aZ/ryu/qXEaAq3J1sYEzm7hWMGFSe7DODrfXLb/HLPQV6ujcizMdOxzQhiNCKuBZqe70KB+FL4e1UOeXDyEh2l98P2VcPBsatWGpKa7y+BgJR7x/FUjGOmTKWYVFfJg7ZasNT+7y2MLv0JHgcxmkCNio1xwF7QL+Zgtq0rXGbR744SRLzMtIZszIWRGh/OzNCrIw7yEKRQsnKYtcJZSlg2VCNuRS3uMFQj/19PR5yXC7QZGY7qqB7NURg9jrJq1kkLKalZC5fHgwIohOGOAlfhV4ZasoEgUYNb7iyHUxAQTL36p76Nzt/CkZxxo3eXJaF0ILla1fvLy0oOiaemyMkEI+0KpPB0B9DhI23B8PO0fZoM3EhbyUE6Dc477Ui/SHmBgYuKsFGdkP4ShcjwrVJK6snKOXoePXSqhRqZGOtsArn3pvk3ZGTfxx6VYPVXX0v4lSCQYvRjwBtmOiDkiW9HT5hqujBQcIv+IKKBOgOfcGc6Tin3Q6F7crURPMGuVJq4+M/v+Hm5NeAulS6PTdoHWzUM5sM83ixmyK3DuRa353RRVs9xELBiuQ0OPJ0ujySds/vCB1UsaV+2SrxfxXZYtVRdkO5+UIQTPX3SVXkEbuv4k1DIzoq+2b+ejOTni8tZrjN96ZlvWUj6Tp0hk3QlkjzRlk/bHvR3NsMqm45YCkkabDSK7xWKnVsiw3xV+ejWfkeAWYEX1LQEQ4NZ2MnlDCU+S05aDVAmiJp9DDFT/TsDemTsvqfypaPWlvXGDW7O4SdRv1OJXb2ya5SgVcTaz32VrO/9DpxM3c5XZfDuHGI482o/p3ereD9/lNR8GGU2hhRqaTBKO6myCvobP0EA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5652.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(39860400002)(346002)(376002)(136003)(478600001)(122000001)(966005)(4326008)(316002)(38100700002)(8676002)(83380400001)(9686003)(66446008)(64756008)(76116006)(55016002)(66556008)(86362001)(2940100002)(2906002)(5660300002)(26005)(33656002)(6506007)(53546011)(7696005)(66476007)(66946007)(8936002)(110136005)(186003)(71200400001)(52536014)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wMG6CUduTStbe+hmLv1vqRoURjG9SmH2CGutrcy3xX4yD9f7qkZZRLNOl6GI?=
 =?us-ascii?Q?pUxW+ru4An4GOenqcv+C1vgdIUIO5YPngXiWAehoyCKo7dLMTdO31S4JypwG?=
 =?us-ascii?Q?zyllAD+6Rg+vbbF0ds+efhLqJvYgeN02ZFlNaiVkD9IDWi21H94+/lwu+2pO?=
 =?us-ascii?Q?Mi45lajpp2MaUyhMCRTSUUi7/S9OQDK4oP+mXRMKvzTPHyhhNup17byCOOfy?=
 =?us-ascii?Q?V/hyuXx/84A9VTaCvGXDhtDT0spzImjoW/KSvBOnikJdXMfNT5ZNheb8QlHY?=
 =?us-ascii?Q?MjCd9SKHvs/5C7yH1wHqC4GIdIB29qxKWOWN21twFjMbfNgIkTzw5XRsGhJM?=
 =?us-ascii?Q?489jhZWkd6JaeNdVT8cUdHYxS9KDp7pfg9B+SwEQPLJSZBnMUI8RZGsriA+f?=
 =?us-ascii?Q?+zLH4+OMlcncvGM7QVX/mTDqrNhWOz17LaFKGo9GIzSOMRr/nIaj6/gOsTnB?=
 =?us-ascii?Q?eH3nKBLQLCl0txFiqaMZdX+u4oaYs59KAZLPQnEJCIXOAXjiHhBfkS3Wwp8w?=
 =?us-ascii?Q?HvPMIiC7FFq64raSHk0RK23TrYSpfnzcMGvHegoiEBx+k89IZzkFa9jtfY7A?=
 =?us-ascii?Q?H3ICuQnUW02v8iZRHu6d0wbFS+3SCVC8UL4UbJZGpXMts/TMl2RWdVW35Toe?=
 =?us-ascii?Q?0JX2Wmj6rwceukkU5usAp9WrBDAv9UtdSRe2NeHKw+CJ35g/fmdCaWqQXAdc?=
 =?us-ascii?Q?B15Eub/MLqZg9sMpRogGWTXpLaBr8Cejiwl3dupkC2pN7YU/y2P/80p4qGE5?=
 =?us-ascii?Q?IDplwadNyTIh89LBFOIJeNmr4cTOqMtiFnm4eI90jJHZx1lCDvli2mlFnCeO?=
 =?us-ascii?Q?vffW89ZMQMHstdgLuH02WNuj9oLAMRA/so0fR5z26u+y9MOhpD4qgHvOprRY?=
 =?us-ascii?Q?S7s2lOd2aPPhsuUDh1yO+TvvYKeqfn2t2akevTDca0EBhOZj4R2xUo0WCh+o?=
 =?us-ascii?Q?xGb26Jam7t8CZ/5gDlSxlw5QXZSftTO6vabxbYu9V9Oqv25clnp6mYh7+rah?=
 =?us-ascii?Q?kvEWs+ADvF3RToDsERiBN3FsdAxKRjCVbhw5eJHQxVcqQkN1q4AkbYyyly8T?=
 =?us-ascii?Q?H9lsGNHFtlUfXR34c1XGdz6zSAbL+kDlMXmSq7kh97TIwd4q2MrFBH87cwMe?=
 =?us-ascii?Q?79gxS9QVuJEfA83b/5xmleJxVid01jeiMFlSJhWT1QFL7HBEgapaxAkrRtI2?=
 =?us-ascii?Q?7mTes0ulk3b0xEBa0RhGwU9CRMmQ61zmtLA501wooAYBVpcdeyMc7lKnbiEH?=
 =?us-ascii?Q?OMTxiOkMUXess/wCjubm22W/CzhlUXw4jAPlcb0YAkXdFCI6iAPqrL3afYr7?=
 =?us-ascii?Q?yfgIB8ZrAAihwg5xMjdaRe2e?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5652.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f0b56cc-0f4c-4957-1737-08d951183130
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 16:04:19.5358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hV1bkF9xD+hy0CyVZqgMQ8qwr38AenJ4tUWqm9SBxhvsNFEuu63KBgdbauRPutM2yp6Ef+BGmB/TilH5Jpm59A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [E1000-devel] Traffic not passing for VLAN ID
 >= 32 on the I350 SR-IOV enabled NIC
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
Cc: Pushp Saurav <psaurav@juniper.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

You've already reported this internally, and you've mailed this to two different mailing lists. This just delays the issue so please go through the internal route.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Fujinaka, Todd
Sent: Tuesday, July 27, 2021 8:04 AM
To: Yuvaraj Ranganathan <yranganathan@juniper.net>; intel-wired-lan@lists.osuosl.org
Cc: Pushp Saurav <psaurav@juniper.net>
Subject: Re: [Intel-wired-lan] [E1000-devel] Traffic not passing for VLAN ID >= 32 on the I350 SR-IOV enabled NIC

Can you please file this through your company contact? I think you have very specific requirements that we can't discuss on a public mailing list.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Yuvaraj Ranganathan via E1000-devel <e1000-devel@lists.sourceforge.net> 
Sent: Monday, July 26, 2021 11:23 PM
To: e1000-devel@lists.sourceforge.net; intel-wired-lan@lists.osuosl.org
Cc: Pushp Saurav <psaurav@juniper.net>
Subject: [E1000-devel] Traffic not passing for VLAN ID >= 32 on the I350 SR-IOV enabled NIC

Hi Team,

With the SR-IOV enabled on I350 NIC which has 4 VF's, on configuring VLAN ID from range 1 to 31 on the VM interface, network traffic is fine and no issues. When trying to create an interface with VLAN ID >= 32 on the VM, traffic is not passing to that interface and as per HW specs, VLAN ID's from 1 to 4096 are supported.

VM's interface is directly mapped to one of the VF on I350 NIC. I am using IGB PF driver version 5.7.2(latest).

Could somebody please help!

Thanks in advance,
Yuvaraj.


Juniper Business Use Only

_______________________________________________
E1000-devel mailing list
E1000-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/e1000-devel
To learn more about Intel Ethernet, visit https://forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
