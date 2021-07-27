Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B59153D7946
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jul 2021 17:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25EFD404BF;
	Tue, 27 Jul 2021 15:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqnYuaxA5kZF; Tue, 27 Jul 2021 15:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0698440467;
	Tue, 27 Jul 2021 15:04:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B61431BF860
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 15:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A406F6058C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 15:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fh1BvdFjR8qL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jul 2021 15:04:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0DC86058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jul 2021 15:04:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234330419"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="234330419"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 08:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="474623435"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2021 08:04:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 08:04:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 27 Jul 2021 08:04:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 08:04:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hRW9fc+opBZwWFenLi+aT/mk/HsZTeJHEB5/3OFv936rChR+4uwI2/dG/lHeudHslAypVAcI7mkf0S/RnjhECtmcfiYd0HXt6XPQaaXjVJk7dvKTky6oJ+0h4+2FoNl+aKmuzGh40sM86MLMv3ag/cORvQTz30THJy4fVkykEh89OEY8ZrdPdVjz1Y4wZCLPCA8DSwTuSz1DW8wzcQrOPC/D32Ka6WHj9I8lX1H7rCxkcSwnm2nRmEGFUopVX1MdYeYpxXc2lorFWk09PVRYz7KVcIWM5tgq19tRw49YEFZM0VOdPQMvZNl8q274qv26Tnl+TW7NclMyfK7QRkoP1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQnWbzrU0QjxW9YHAFXyAwTT0sSRF0+B1WMZvsJxd/g=;
 b=MpnADrnHS3QV/6quKaUPalpQQnjFWUhYoHazv4dedY6Ecqb/8bGIfQGYIRYkky85Y6gxb1lIj6PHk3Hk5XyjheQGshMtFZSm1TdFFut0+H5+rwIiqFea7HoYyPcpL30QpEvRJc6d0EXB2Mx/SbBe5MM/kexz1Iok6+x2vwafDeV/Jpiorz2DIxo25DKqrwKTausBVarbGn8zKlYd87+lrIXLQ2Y8doSLbhWehiFiFXsFkqASSEw7Ts9kq+w2F81lAmdgrfEYka52vab/IZdratFyIlKgBcy8CuWmNMQ9geeclcdAk8qpD2AYEG1qyna5ygwhU84FserN+XG1gGxXew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQnWbzrU0QjxW9YHAFXyAwTT0sSRF0+B1WMZvsJxd/g=;
 b=IqAGdu22479kT9+JteU+Y58D8a+/gptZ1tzjsNXYhJx7/MQ47k++Du4RxkpAKNjE0shSyKjUXD+g3jZ9xH9necXu17U+X+Gm5mIffoBC6rxOrkRPETeX39EyGCr+BoekNZLE3huGFaUNic1Bu9NK8xDRLl6hHxRj0mTY0Y13sNA=
Received: from CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14)
 by CO6PR11MB5572.namprd11.prod.outlook.com (2603:10b6:303:13c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Tue, 27 Jul
 2021 15:04:29 +0000
Received: from CO6PR11MB5652.namprd11.prod.outlook.com
 ([fe80::6940:a6c9:1d52:b575]) by CO6PR11MB5652.namprd11.prod.outlook.com
 ([fe80::6940:a6c9:1d52:b575%7]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 15:04:29 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Yuvaraj Ranganathan <yranganathan@juniper.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [E1000-devel] Traffic not passing for VLAN ID >= 32 on the I350
 SR-IOV enabled NIC
Thread-Index: AQHXgqzxV++qPwNWaU27fCWwrDJgLqtW69Aw
Date: Tue, 27 Jul 2021 15:04:28 +0000
Message-ID: <CO6PR11MB5652E3BC545B93D49C86B3D6EFE99@CO6PR11MB5652.namprd11.prod.outlook.com>
References: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
In-Reply-To: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
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
authentication-results: juniper.net; dkim=none (message not signed)
 header.d=none;juniper.net; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff33d4ee-1013-44e5-8c6b-08d9510fd51c
x-ms-traffictypediagnostic: CO6PR11MB5572:
x-microsoft-antispam-prvs: <CO6PR11MB5572806B15B7BC77E78DE28FEFE99@CO6PR11MB5572.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uLs+ARKxEsjgFLAXgQ6KEkarNt6BY0nLPe93oHALJqmOrn9EYscTG1wVoh+wrt4Dd08zRM3KI6aOXud9/x23KtJ5dpu3Ow6M5CcguIR9/ZEdExm6MojuI3kPObCnDh+BLZ1FRki/dHYyl7GA1ogKJZ9MBuZiWR9ABI+gPHbietK7udau4jnCNkNsh2PLRWLcKH6mNCp+Yovsz//8v5ubrv8hYZJbE4uv6K/2yNnzCyLjR+sNY1tktHqU5d9GQxfRIcrQboC0DcLN8uR6MVaa+gWCupN9YTaag9r6bmKW4zZoFbypjxfOaiz0MQG64+uh4wsOKiryFZJOHlrGgfmNbdm/1OkhUu75MgGy2lvRHr7nYyQGMxUZwNs9QKtDPlYCsEVcwu3HtNdS4r7mhXFhL40kJE6E4m83rHXSmzPlLlafnaixbdProdMo1VVVBo3l1L+2hDViId1XWC7dMEJsZhPJ0pDs9bH/wtqcYUe9xXhv7n+MvH3J/kBA1qsiuR0tp1WaFurecjxzKAxtVDO9U1Wcl4PPPq8Adx0QMLgjAEWIzp8x6uttaGx+2VFfqtSBxkUxftPBB24KEAo5mZl03gE1Zyr9LwhfDyRDJGr1TyX+APDSMhpVhVtnbC+zj4mVyd6H3rnVPBAIAZCCk6W1dGI3MIVmNW9w/gLDJ6ErTVYxtZLcHK5zvArJzOgmuUh0FUcrqgVJ5k9XrvA/0Sv3DX33QiYwjtTK0FVuYXaWCorcFK7vtE9k84ruBK5b5NtqXn6GnZqs8n+9rdQ+mVwKE5/amNqM/1qCdkkime2EZoC+SPpvv0WX+BjHpfnO3yATwZVteKcxm/l/WJvrdNcjhQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5652.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(122000001)(7696005)(52536014)(55016002)(38100700002)(6506007)(33656002)(53546011)(26005)(5660300002)(86362001)(4326008)(71200400001)(8676002)(110136005)(186003)(66476007)(76116006)(83380400001)(966005)(8936002)(66556008)(478600001)(66446008)(64756008)(2906002)(9686003)(316002)(66946007)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2ctWI/B+xliTsS7JnHDGmIxsh3YS1BxcdNPLMKuHEyivyfm/0RiD2BUDRaov?=
 =?us-ascii?Q?x2SeJVTkN+ftO0N7Zb1FzaL5iN7WWuu54hUVFJcCG2eHD0waq+B4nDHZmjQW?=
 =?us-ascii?Q?xS4zedTPzlxJlyKSOBl0ghsNv+5d+/wAm21XiTGMfOotsWnzm1R5ado5j3TL?=
 =?us-ascii?Q?YRvWBEdof42i4JTQ+kUXKUIP5rV8FgbUPpd8LCUAswnCRj4F0g76258gmWQk?=
 =?us-ascii?Q?qPEgLpVZWSi4fLxDSiZJ5USoaDoc6/snpiPtwzd8HjtmdDoeofi5ZjCytz1H?=
 =?us-ascii?Q?wx0lhU5XkeAcS6SbgX9TAgpHeE37f3sM3SkHQamTh6qINv5pfLlUu+hy+kKC?=
 =?us-ascii?Q?YIXRfnzvX6R7coAWndzkfZq/towDsCq5kcGGUxMdsKrLm9StA3i/+NgiGOrT?=
 =?us-ascii?Q?S0L7NFkRcr8gUPeN6rzFiedPJ0t4TaGQFK7QRBBxpM/g034q0ENiLrEJe8TF?=
 =?us-ascii?Q?bGHJOaE4MbWBEHZfUoLuy5h6cyMGGanZYPMMC/ZS3ipeypUP1KNKEwrT+9U0?=
 =?us-ascii?Q?R/+Y5+vgAfbi/KNo1QkL++/8ZlaqLqNwgMggZjF3POjRtfMs/P2VwqLW+7zs?=
 =?us-ascii?Q?OAwk5e+SknPjorraoOMyKJx941ybzO1MU5b67kQwnzX0FvnB5Bj/8Q51m/Db?=
 =?us-ascii?Q?ZZ4FK/ds0L3fcEKfUbLeL/nLMqZv2KfTD68vNE3dmo6KFEDQumbz9cNbMveV?=
 =?us-ascii?Q?Cmj+1i3/TlX85qSzO8DOQZCDaejn/zGOWmgvcot3VoR4pvbW5dwVJbyRKSz7?=
 =?us-ascii?Q?3/XeyEFb+Z7mxa91jRLhSrrdFGhrZ80K2hQ2WWpfIYye/PGEoH9snyse0HBo?=
 =?us-ascii?Q?Bx8IYN2bLMf5/6jc57Q48MPuETRGmmpEOycQo5lIvdE/uWkEFVBhok2Fzozc?=
 =?us-ascii?Q?AjkhmkBCFSiaYVdCYtq24BzGF2+NCb9nI69pp5TaDDDAYsvzOwoke9s5TXKN?=
 =?us-ascii?Q?jICCvlCvg7ruywRE+pBejghsNKE1Wp3jdSHuVT3yZStRrA0wH/6hwwwmbYo1?=
 =?us-ascii?Q?mnA4XfOsrpC9m+Iq7vS0J+NbMxDX3cbqLPdYSOSRYf1wOT2lYkzZN4xwADz9?=
 =?us-ascii?Q?zs7mAMFx7/YsehV88lhZMhD0kSrHr0b/d13yBtNWexUP1n0WakXkzuzldxMm?=
 =?us-ascii?Q?ymHsnXAOuh6vPNEmfapmk+LrYmffCid566pHwApu9aSV1pRVhEFxhV5kjVZ4?=
 =?us-ascii?Q?Bwy6RlmLnZUicX2p5qT2nVnaMNGy8/NmiFknv42Ha0lo3mfvGlLRSmQvDCm4?=
 =?us-ascii?Q?H8qnyDCY65baFXBq+FZds3k3RSXmi0iPIaTUHjFrzwT2BYGtS7qoZsU/amIw?=
 =?us-ascii?Q?tvvI2jKJwQdNsCji3rJeS9+H?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5652.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff33d4ee-1013-44e5-8c6b-08d9510fd51c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 15:04:28.9810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fmKExGEgXXaXhZ7LQCqUzyhSdu6L+U5MvxI6XpDcCBuSfIw2LeR0J6aarr3T6HU/L/iCXDx9qFjtvHZWv0ZaNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5572
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
