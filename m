Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D366241F72C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 23:59:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2453C814B7;
	Fri,  1 Oct 2021 21:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 71i3neo5JZKc; Fri,  1 Oct 2021 21:59:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA52C84102;
	Fri,  1 Oct 2021 21:59:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4144B1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 21:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E9428450B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 21:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxlqyR9HDITY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Oct 2021 21:59:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E21C6844DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 21:59:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="248161870"
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="248161870"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 14:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="565296299"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2021 14:58:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 14:58:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 14:58:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 1 Oct 2021 14:58:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 1 Oct 2021 14:58:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OYUnqwXvUNYiqclzBOxG/hWGWoGFNeP2RKSQma9GDJxFokzEX2vlO0lqg0rqRKINYQNJ/fGTxR2ugeUufb2esLy8rpffQimwF1A9x6c2ihtnJAOPtJopiO41GP7mNL/12Gogt/Z1qAB/y4WH/jQnBPqwbf5fWjZr4k8TJs6RmfgPv0S810HPxvJoppcnnx/MZ4UMbaSlVZ1QWMosr8jYXlFem5KvdWImQZkEeGutr5TJKa12BazzQvCHKO1jTeN4rP5s/63bxdcv1GCIrvirJL2w03367in0oSp6426wZbrDu2YpUlo4ojcxHxj9IWMJ70udC6v8YeqyoQcmbRhMWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFHF/PfHlhp0RNw59plYv7WidZ6PEeuKUIpOmruyTOQ=;
 b=CcolgkN/oHS09OFDDLGTVmuMvjINQyr1GOGu/EpY6Rlv0flnSsgvsOhGpBx34DSouUgqbg+gNS3o4vSa5Rrcyy11+FINM5x/t/Duv0PLdRsO8O+g1IwlB5zdv35/uLuhhWprxh0GdcAL8XMOQM1benpsrBzvYXWxO7aOaV9q8rihPj697RyruLkw/q+E0DGIZeGCBJE26pBv8HR6B2v0+I9gd6fd8/ceaO4SaoRO2RCSZzHwmvJOup0r8GMY4gWo1ss0OL8gE9fAP67oWmvwoIDNspA9kKjNlXlnDTrXbUHVfqcoEUWgUuiux9MFNXlia/eryLSu3iwmExFD/w4BOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFHF/PfHlhp0RNw59plYv7WidZ6PEeuKUIpOmruyTOQ=;
 b=hD4l3BDE/euE4Kopm1tb2yQYieEut3VUXCzvcwzekRYHpkZu4fRdI7Vsp0XJH0D0hLFWysmHzPNIOX5mUunuF4AzBW2NE6pfYZPuYs3jr45nMiYUJlkwaCdo/jYHIU0t4U+F9wj/3hQsEC7GBTTKKQnua3IuF23SzBVcqaNFraA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3120.namprd11.prod.outlook.com (2603:10b6:805:d6::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Fri, 1 Oct
 2021 21:58:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4566.017; Fri, 1 Oct 2021
 21:58:58 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
Thread-Index: AQHXtTgsi1Mfluy8mUKDb+FQaicOD6u+sR8Q
Date: Fri, 1 Oct 2021 21:58:58 +0000
Message-ID: <SN6PR11MB32294EED767A5B10B6668DF0C6AB9@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20210929134410.93953-1-karen.sornek@intel.com>
In-Reply-To: <20210929134410.93953-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf8b5306-a2b4-4bdd-b7c2-08d98526ab82
x-ms-traffictypediagnostic: SN6PR11MB3120:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB31201AFD5A4797FDE622AD77C6AB9@SN6PR11MB3120.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GcGzW6oHPMZTRZgnmW5Af8WZ9bleINKJw2ZyZ7FPO3Nb6z8eS9GExsDbEWumwsQ/IrYdgSe9gRMyaIj28WpTvmPKofJkCzoWEz57V326b9dWMa61KIuBEl39YdDavCFZql++voDat0+O+P1Ss/p43nKfLQF5ZxQB4/+Auxf0q3L8+geaYVaf6mqJFNDesrkv2NRjxPNugDCHrjV3ijrWnKB3NAfJWK7Fm+dc3KEpcgYhQYheG52KANDuP9soRYPVgRiW2Ipw7MNimmNIJbEAQZzWiWumaXZWqo7XVqxUYuectNOBBwDFHIbjJ6V9qkcDZdPBolx/ERZsUWeftKg17hAbOBGdy7iJtmVSgiRpQKuxFODVn1fNwhWvwnmFMYylOp/gUTpJSx952oeWbW5hYazgdfJyStYUY9dScyG8YQ3IascTh4cIr1k6jslmHoXUEWgm/RnkkqsScgYX9an0ftla4gglYLX8SGxKzbgP0pzeVDRCQu+WQ63NYAl946CeMR4QEHoP7RCYaMpue6t0gCCJ0X493P/Zp+PIKy9hIAQWzB9/G1qPkROfIWLoU+IckK8zR5E+WmMEfHC8mVa8jr2znagn7BDITMSbNFtGwFRvmdf2gs79XJEGgDo6DO17GJlbS/esm8eg5wPnujDWVYdfyzpSRbQGRXy9aFzudEXvCUU50SKEL08MQKKgmbGhFguYEVEJ2lQ1n5/XrERr8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(7696005)(52536014)(55016002)(54906003)(76116006)(26005)(186003)(122000001)(86362001)(6506007)(53546011)(30864003)(71200400001)(316002)(8936002)(9686003)(4326008)(110136005)(38070700005)(8676002)(33656002)(83380400001)(107886003)(64756008)(66446008)(66946007)(2906002)(508600001)(66556008)(38100700002)(66476007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CTJwOOZ0xDmKeKRMFb4P71NgGyaCJegvl8eZh7gJEOdM9sGdcQKsCYaiswkq?=
 =?us-ascii?Q?A7gqWGp2eckyX8wJdWX1iKszzdJHgFs2i/JFeAn13wUKG3+lbJNh4btqr1fk?=
 =?us-ascii?Q?PJBQ6tgofNVMRjisLxLb9rBABal/KbZ5juMKomiw/93ZLVNPzJsIUKBOxjDB?=
 =?us-ascii?Q?LDptvJvNlnXtpfbFrAu6IV7yd6+X4tF8sfLffUdsXDrvFxfubF8jkEqTmGz5?=
 =?us-ascii?Q?aC7SjKEu7eQlkl8nNwrnH934mvvHcjFd7hKgT6ATHCs3CJxayG7qGKheMNi0?=
 =?us-ascii?Q?62Da6V6siLZCsXRA4qCztAEuF69K8Fl9J29ggcpl3rCvR9OEyqsoG2rxLuR6?=
 =?us-ascii?Q?oUT8/ug7nbyMi496U2Yk3rovO+EAmcJq/sXFwZyMBr+QGT2J4DPOpD1tmJCX?=
 =?us-ascii?Q?DZ3ZBJXmk+xLHA7C5fP5EbRTG3rJNkMRxtQlOMaADGvzyiNFUDQ8Qan+hEf/?=
 =?us-ascii?Q?70bxqm2276gczMku5LF5WEIpVyy61GI6jJiPfh+xdqAocb8E0Dx8u2UBgKET?=
 =?us-ascii?Q?yvo2vW+xfIYNdZYtdU0a4FwV4LqO8YNN4+AgFrp9g5YMAnk64rrcPWwEPJwH?=
 =?us-ascii?Q?tj8Qf9/DLErG/6k4hcHSiXpxvLEOQPd+9+qx1GVPboCoOSWLiddrcHImuAVQ?=
 =?us-ascii?Q?dYuOonZ5o443WfM93wgfQNUcVk7TPlzs2llOOW0dtELFTCJMt8WRoBHjeq1z?=
 =?us-ascii?Q?NqMVotH1MIaU3MabPm4CzJkW6AA+GBgLFXoNb+KauqZq2JOugNR0XrhrhopH?=
 =?us-ascii?Q?nSzyl/ECj5UyBmOyCrij7z+n20e9WPFnFYtgNC3K7apEo2UDs6KpE40T36Ey?=
 =?us-ascii?Q?Sb8iITtQzqntEhGFr0zwKCZJnBoFkfIXY6CzUHt/U5qystLCdAVdkaol9HVI?=
 =?us-ascii?Q?aVIZTZEansyBUV2Mpa+eVh0QOwAW9xYlqRR7Jj3DwaUSlWCIcT8CVpJgakLd?=
 =?us-ascii?Q?8iVaig7p1rINu8ZM4n6ZvZH1aDCehUB3r54KRc1FiwaSNT4breUZGIZgDptX?=
 =?us-ascii?Q?Yalk7WpCU3o/Gl3CkkpFpoAmjQZYTwG9q2LnKxkimRl3JfXH4VfMJZhxIGjn?=
 =?us-ascii?Q?xxTCQC7ItiPcOmg7BWVj57bi13m7jyPWlOWPEyydmvoznRjvUVRykeTB93VY?=
 =?us-ascii?Q?y6INOrwvF6yWa/v5TJP2Bm5ftfeUpUb0cstXQxO0oF5f7wDAsUe0vwAImXgQ?=
 =?us-ascii?Q?5hc7fyDYZY7XZWrtZAp8q1wx4uXTMhzUeXBLQgjd1g32e+L/IF81jtVkGI5R?=
 =?us-ascii?Q?CkC4WX0uJd4MHzBhJCawTcnqdubqzbdjX7IxZPPwTcPEEsBFCBN80bXumOgi?=
 =?us-ascii?Q?uGWttO6P6kEgyo3U9HlaCqZy?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf8b5306-a2b4-4bdd-b7c2-08d98526ab82
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 21:58:58.1368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TupO/UdA4WzTCewjHzkVbNoJa/NKozqEUoqalfZ649pQ+Et+iXI5Mw4/5+rGBkDnwR4OZ5aFDTE3homDMUdR2mMlwM/nbibsJFNNlRvp3fk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3120
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karen
> Sornek
> Sent: Wednesday, September 29, 2021 6:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2
> 
> Restrict maximum VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2
> 
> For VIRTCHNL_VF_OFFLOAD_VLAN, PF's would limit the number of VLAN
> filters a VF was allowed to add. However, by the time the opcode failed,
> the VLAN netdev had already been added. VIRTCHNL_VF_OFFLOAD_VLAN_V2
> added the ability for a PF to tell the VF how many VLAN filters it's
> allowed to add. Make changes to support that functionality.
> 
> Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload enable/disable
> 
> The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability adds support that allows
> the VF to support 802.1Q and 802.1ad VLAN insertion and stripping if
> successfully negotiated via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS.
> Multiple changes were needed to support this new functionality.
> 
> 1. Add new aq_required flags to support any kind of VLAN stripping and
>    insertion offload requests via virtchnl.
> 
> 2. Add the new method iavf_set_vlan_offload_features() that's
>    used during VF initialization, VF reset, and iavf_set_features() to
>    set the aq_required bits based on the current VLAN offload
>    configuration of the VF's netdev.
> 
> 3. Add virtchnl handling for VIRTCHNL_OP_ENABLE_STRIPPING_V2,
>    VIRTCHNL_OP_DISABLE_STRIPPING_V2,
> VIRTCHNL_OP_ENABLE_INSERTION_V2,
>    and VIRTCHNL_OP_ENABLE_INSERTION_V2.
> 
> Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
> 
> The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability added support that
> allows
> the PF to set the location of the Tx and Rx VLAN tag for insertion and
> stripping offloads. In order to support this functionality a few changes
> are needed.
> 
> 1. Add a new method to cache the VLAN tag location based on negotiated
>    capabilities for the Tx and Rx ring flags. This needs to be called in
>    the initialization and reset paths.
> 
> 2. Refactor the transmit hotpath to account for the new Tx ring flags.
>    When IAVF_TXR_FLAGS_VLAN_LOC_L2TAG2 is set, then the driver needs to
>    insert the VLAN tag in the L2TAG2 field of the transmit descriptor.
>    When the IAVF_TXRX_FLAGS_VLAN_LOC_L2TAG1 is set, then the driver needs
>    to use the l2tag1 field of the data descriptor (same behavior as
>    before).
> 
> 3. Refactor the iavf_tx_prepare_vlan_flags() function to simplify
>    transmit hardware VLAN offload functionality by only depending on the
>    skb_vlan_tag_present() function. This can be done because the OS
>    won't request transmit offload for a VLAN unless the driver told the
>    OS it's supported and enabled.
> 
> 4. Refactor the receive hotpath to account for the new Rx ring flags and
>    VLAN ethertypes. This requires checking the Rx ring flags and
>    descriptor status bits to determine the location of the VLAN tag.
>    Also, since only a single ethertype can be supported at a time, check
>    the enabled netdev features before specifying a VLAN ethertype in
>    __vlan_hwaccel_put_tag().
> 
> Add support for VIRTCHNL_OP_[ADD|DEL]_VLAN_V2
> 
> In order to support adding/deleting VLAN filters when the VF
> successfully negotiates VIRTCHNL_VF_OFFLOAD_VLAN_V2, it must use the new
> virtchnl opcodes:
> 
> VIRTCHNL_OP_ADD_VLAN_V2
> VIRTCHNL_OP_DEL_VLAN_V2
> 
> Also, the VF is able to add 802.1Q and 802.1AD VLAN filters if the
> support was negotiated in VIRTCHNL_VF_OFFLOAD_VLAN_V2 and
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS, so add support to specify the
> VLAN
> TPID when adding/deletingn VLAN filters using these new opcodes.
> 
> Lastly, only re-add VLAN filters after VF reset if VLAN filtering is
> allowed instead of just blindly re-adding them over virtchnl.
> 
> Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
> 
> In order to support the new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability the
> VF driver needs to rework it's initialization state machine and reset
> flow. This has to be done because successful negotiation of
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 requires the VF driver to perform a second
> capability request via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS before
> configuring the adapter and its netdev.
> 
> Add the VIRTCHNL_VF_OFFLOAD_VLAN_V2 bit when sending the
> VIRTHCNL_OP_GET_VF_RESOURECES message. The underlying PF will either
> support VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2
> or
> neither. Both of these offloads should never be supported together.
> 
> Based on this, add 2 new states to the initialization state machine:
> 
> __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS
> __IAVF_INIT_CONFIG_ADAPTER
> 
> The __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS state is used to request/store
> the new VLAN capabilities if and only if VIRTCHNL_VLAN_OFFLOAD_VLAN_V2
> was successfully negotiated in the __IAVF_INIT_GET_RESOURCES state.
> 
> The __IAVF_INIT_CONFIG_ADAPTER state is used to configure the
> adapter/netdev after the resource requests have finished. The VF will
> move into this state regardless of whether it successfully negotiated
> VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2.
> 
> Also, add a the new flag IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS and set
> it during VF reset. If VIRTCHNL_VF_OFFLOAD_VLAN_V2 was successfully
> negotiated then the VF will request its VLAN capabilities via
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS during the reset. This is needed
> because the PF may change/modify the VF's configuration during VF reset
> (i.e. modifying the VF's port VLAN configuration).
> 
> This also, required the VF to call netdev_update_features() since its
> VLAN features may change during VF reset. Make sure to call this under
> rtnl_lock().

This commit message is hard to follow. Please reword to make it easier to follow what is being done.

Also, this patch does not apply. Please work with your team on resolving this problem; you are consistently sending patches that do not apply.

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 126 ++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 773 ++++++++++++++----
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  94 ++-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  30 +-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 588 +++++++++++--
>  5 files changed, 1296 insertions(+), 315 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c957755..15b275950 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -56,6 +56,8 @@ struct iavf_vsi {
>  	struct iavf_adapter *back;
>  	struct net_device *netdev;
>  	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
> +	unsigned long active_cvlans[BITS_TO_LONGS(VLAN_N_VID)];
> +	unsigned long active_svlans[BITS_TO_LONGS(VLAN_N_VID)];
>  	u16 seid;
>  	u16 id;
>  	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
> @@ -93,6 +95,17 @@ struct iavf_vsi {
>  #define IAVF_VIRTCHNL_VF_RESOURCE_SIZE (sizeof(struct
> virtchnl_vf_resource) + \
>  					(IAVF_MAX_VF_VSI * \
>  					 sizeof(struct virtchnl_vsi_resource)))
> +#ifdef NETIF_F_HW_VLAN_CTAG_RX
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_RX	NETIF_F_HW_VLAN_CTAG_RX
> +#else
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_RX	NETIF_F_HW_VLAN_RX
> +#endif
> +
> +#ifdef NETIF_F_HW_VLAN_CTAG_TX
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_TX	NETIF_F_HW_VLAN_CTAG_TX
> +#else
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_TX	NETIF_F_HW_VLAN_TX
> +#endif

You have these ifdef's all over the code. Why are they here?

>  /* MAX_MSIX_Q_VECTORS of these are allocated,
>   * but we only use one per queue-specific vector.

<snip>

> @@ -1700,6 +2098,39 @@ static int iavf_process_aq_command(struct
> iavf_adapter *adapter)
>  		iavf_del_adv_rss_cfg(adapter);
>  		return 0;
>  	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING) {
> +		iavf_disable_vlan_stripping_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING) {
> +		iavf_disable_vlan_stripping_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING) {
> +		iavf_enable_vlan_stripping_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING) {
> +		iavf_enable_vlan_stripping_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION) {
> +		iavf_disable_vlan_insertion_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION) {
> +		iavf_disable_vlan_insertion_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION) {
> +		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required &
> IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION) {
> +		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +
>  	return -EAGAIN;

You are mixing iavf_status with standard error codes.
>  }
> 
<snip>

> +/**
> + * iavf_poll_virtchnl_msg - poll for virtchnl msg matching the requested_op
> + * @hw: HW configuration structure
> + * @event: event to populate on success
> + * @op_to_poll: requested virtchnl op to poll for
> + */
> +static int
> +iavf_poll_virtchnl_msg(struct iavf_hw *hw, struct iavf_arq_event_info *event,
> +		       enum virtchnl_ops op_to_poll)

Should this be returning iavf_status?

> +{
> +	enum virtchnl_ops received_op;
> +	enum iavf_status status;
> +
> +	while (1) {
> +		/* When the AQ is empty, iavf_clean_arq_element will return
> +		 * nonzero and this loop will terminate.
> +		 */
> +		status = iavf_clean_arq_element(hw, event, NULL);
> +		if (status != IAVF_SUCCESS)
> +			return status;
> +		received_op =
> +		    (enum virtchnl_ops)le32_to_cpu(event->desc.cookie_high);
> +		if (op_to_poll == received_op)
> +			break;
> +	}
> +
> +	status = (enum iavf_status)le32_to_cpu(event->desc.cookie_low);
> +	return status;
> +}
> +
>  /**
>   * iavf_verify_api_ver
>   * @adapter: adapter structure
> @@ -134,6 +164,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter
> *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_RSS_AQ |
>  	       VIRTCHNL_VF_OFFLOAD_RSS_REG |
>  	       VIRTCHNL_VF_OFFLOAD_VLAN |
> +	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
>  	       VIRTCHNL_VF_OFFLOAD_WB_ON_ITR |
>  	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
>  	       VIRTCHNL_VF_OFFLOAD_ENCAP |
> @@ -155,6 +186,19 @@ int iavf_send_vf_config_msg(struct iavf_adapter
> *adapter)
>  					NULL, 0);
>  }
> 
> +int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter)
> +{
> +	adapter->aq_required &=
> ~IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS;
> +
> +	if (!VLAN_V2_ALLOWED(adapter))
> +		return -EOPNOTSUPP;
> +
> +	adapter->current_op = VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS;
> +
> +	return iavf_send_pf_msg(adapter,
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
> +				NULL, 0);
> +}
> +
>  /**
>   * iavf_validate_num_queues
>   * @adapter: adapter structure
> @@ -235,6 +279,28 @@ out:
>  	return err;
>  }
> 
> +int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
> +{
> +	struct iavf_arq_event_info event;
> +	int err;
> +	u16 len;

RCT

> +
> +	len = sizeof(struct virtchnl_vlan_caps);
> +	event.buf_len = len;
> +	event.msg_buf = (u8 *)kzalloc(len, GFP_KERNEL);
> +	if (!event.msg_buf)
> +		return -ENOMEM;
> +

<snip>

> +
> +/**
> + * ice_set_vc_offload_ethertype - set virtchnl ethertype for offload message
> + * @adapter: adapter structure
> + * @msg: message structure used for updating offloads over virtchnl to update
> + * @tpid: VLAN TPID (i.e. 0x8100, 0x88a8, etc.)
> + * @offload_op: opcode used to determine which support structure to check
> + */
> +static int
> +iavf_set_vc_offload_ethertype(struct iavf_adapter *adapter,
> +			      struct virtchnl_vlan_setting *msg, u16 tpid,
> +			      enum virtchnl_ops offload_op)
> +{
> +	struct virtchnl_vlan_supported_caps *offload_support;
> +	u32 vc_ethertype = iavf_tpid_to_vc_ethertype(tpid);
> +
> +	/* reference the correct offload support structure */
> +	switch (offload_op) {
> +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> +		/* fall-through */
> +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> +		offload_support =
> +			&adapter->vlan_v2_caps->offloads.stripping_support;
> +		break;
> +	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> +		/* fall-through */

I don't believe these fall-throughs are needed, and if they are, it should be 'fallthrough;'

> +	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> +		offload_support =
> +			&adapter->vlan_v2_caps->offloads.insertion_support;
> +		break;
> +	default:
> +		dev_err(&adapter->pdev->dev, "Invalid opcode %d for setting

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
