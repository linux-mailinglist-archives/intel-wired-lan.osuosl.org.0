Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 112B27E681E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D07A612ED;
	Thu,  9 Nov 2023 10:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D07A612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525827;
	bh=vM1aQ/99cFMYqdxp4IRkV71TfSm1JO87+IvN1joJyWI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XunZUGs5uMd8EwCi/jLQtGOvXI99/YVrzMKeeO6ntN0boEjNHeukosVpTAloPY8Me
	 W2JZbh8797SBghT6LdU/ndbfePqMdYy4UbfjcwD6XjXwe0dVU8XiLKmU/Tn0tIig4T
	 9+11AMlPN/6vC9I16R2A7PrnaUDsZJVFwxxFIPqTD73tqwX5HDqYK67XNbFwYhQ6nx
	 7+WIVd5Cw96Dw7n/n88bEgKKWSpGEpVws3j7H4wB/Ga4oZKAgmh1cXQ2BR6Ns9SXYq
	 g5MLzxOGdiLpSggawGOh6tVYnderJy45Towb3c7OIRvu7v1x6MCMdIjwKUmG326gJ/
	 WaTtgnQZYZCwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SsFbAfDzEEe; Thu,  9 Nov 2023 10:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54DA2612BB;
	Thu,  9 Nov 2023 10:30:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54DA2612BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 823171BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65884404D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65884404D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpSwQYT4VkVQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:30:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ADEA840362
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADEA840362
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="2926378"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; 
   d="scan'208";a="2926378"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:30:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="11101389"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:30:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:30:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:30:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:30:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzNXauWjhcEpLDges3ezp+lLZTJ32YzP4zcXoTwC8Owc/QEoZHCmywY5FPy8RAX/GQjlSOEZvMEtjawccBHE1uJU7t2mSltmMQolmMhOFf363rdzUAeG8MacDffhZAO7rbdzJJ9a2q7VJEDnJqaarrafJP5c/JCWeItAjLfMMJ2lPpC3LgDS1ZYjipR2U8VAwf1XrRZqVhr9SAHIiHW6zlmcwpoAfjn9vQxaH42rwApRP5UGYOBWFOHGbpWUiNF6ydnur15+kZ+1s8uNu471khtkiT0DXMc/CRBeGE5A+J+w3dgjDHWy9eSLv5Xsq2qPI+h++FfMCYxDPvdBOk97iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91YmrKI8+j6zDUM3NUhue7ZDjVWtCHWMpI4uKsL5/9I=;
 b=CbHu+bK+zS2lOyK8fMQYc3rQNenz0z5u4esWy6MZgaLBW+dos5044sIb69B3amNsVwd7taja1PhjQMiIsk7T/FJTmucHawlwJmtXDkpkcJajBQYe6cn8bgK3I9Wj6lgMrk4ywb/t+OtsuCP7AN8RR2bN0NRTXSTdeblPQRlYoDrRYV7wtpxqvf6m1zdFh05A1RTwTHfVRIw/Q0DsG5hK9z9my2e7qWyPn+dJbJyPFrHfcmJQJTSn16yQwJOuV+5z/XhmYYzhsFCX5IJ/lOJV0Gki0VDehor656wSgSO3fwvPTwNAgjqkGO4AtM0GoS6b6bdpsHCMWaXW4vUfnZ0ncA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:30:11 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:30:10 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 12/15] ice: realloc VSI
 stats arrays
Thread-Index: AQHaBm5QJxymWjuqbUCyLLuq+prZKbBx4nyg
Date: Thu, 9 Nov 2023 10:30:10 +0000
Message-ID: <PH0PR11MB501326A899BF6D26F64484C196AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-13-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-13-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: c4db0618-3dbb-4aa2-bde0-08dbe10eda12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hiWmOP7Fw9qjGXGl1RVCAp3SYRVlhQjOlFNglj0rTGCyQQLeHNWziKWSn0GwhwnSk5dv/wRHbNf3JkjSiyHIUOBqORWEEBjAWxp1KBMgvV+s+s3QuEtaLEGNlyj4OZqQAyzxbRENfYiiJ05N7TewR4Zu6Jt6B9xuLTP6WcffXZg7UkQ0YJ6bHzFveJhZ6uxXQd8uvUR4jhGbk1R2/WIe6HUWkvqhgl9ri5nKw4juT0/zqEkvMzWQ7LTWc2BycYEraUh7Megw3vmxgpNixUabEA7BGThNkhm8h5PYUy1iDwctUYQlVEAT1zBbvkWT6l9ifOoVRaEHGIVFSCMCMUrWTyRJSP2N9fxVfuMh/Nu/dBNtb2ne/e1gAyZU9DY5SHHyB85MwWTi6lIzq5kNy9BTUa04oKT3FAnecQoUAvpzNy6G8yyNoHwRjs+15fMHY3R1wbel5r1vaRY5RqHzXr0JvDAYFGL9f+eHZdNTVCyRsYQ5jGxlbdRZ9Lfto1e9FuCmkoQXiJFALNNxNy21XP8Kc+ekyNvtlwcSUHP8iglyZkDXKjdtEsIr5IpZygbtVe2/am7g5MxgONduZ8UcFfjn3ziFqWnTMwWV1bqKthHHawsMKfyyhOipzP1p+ZexivgF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38070700009)(33656002)(55016003)(83380400001)(316002)(64756008)(54906003)(8676002)(110136005)(52536014)(8936002)(66946007)(66446008)(66556008)(26005)(4744005)(5660300002)(4326008)(66476007)(2906002)(478600001)(9686003)(41300700001)(71200400001)(6506007)(7696005)(53546011)(76116006)(122000001)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ef9hGm2/svjjezODUCxIgWywKUXysl3scNi59kO8qp1OoFrxUB/lmDhoLNWB?=
 =?us-ascii?Q?sreQIst/CspnlrTqVC8gyZkkmgKQjo2VmGMHdfDkvbZPuRseYwImgkw8gvoi?=
 =?us-ascii?Q?wNqO1G2zNHgSPx5Cvn3YbASZvSFzNtE/mpnydl8cCKKXotEbdPYbrjSVCdXu?=
 =?us-ascii?Q?xMtsd4jT0RMD6Ono55UIDLgPgmsYIf9W8mBCUb1g7kojkPnzeGYC+gczlqIs?=
 =?us-ascii?Q?D+HZ7au4En+jefBGOcWRLFTu9O+ZiC0HU1CXw9U+EadvTK8OnlocE5L9eNe6?=
 =?us-ascii?Q?Swz22+dpi3BuuPDWNsaQPt2i8HgRf6NULCcD/cWLKm1yaiJnBXJzshD5EPNy?=
 =?us-ascii?Q?BbfduJa2NDFGtkDes4eZNRiM6TAIfo0TFV3HXDTEpJIq+boBUCSKiIuVIhWs?=
 =?us-ascii?Q?ggOrzG0crLXW+9ABobj35Uu8f6hcQXiod+Nefnn6MGrzvXDox6TqaiP1l/ZN?=
 =?us-ascii?Q?8J8lVjWAUwbQahDIeIh1mf5adSLyrZ9Yk4Wr6I1rcsj2r6vpH5hyTPHgqGBr?=
 =?us-ascii?Q?Bl6ATbQudi8OmGFn4mnaj1vCKLnPB2RHcVn/V59FJxUYnlMAt0nRnR4b4ccx?=
 =?us-ascii?Q?CykNK8B9Qx7GXc+s6xHHNBTnWSV99D+TznEnP0hDVJ4A95h+dKsviluTXHPW?=
 =?us-ascii?Q?JW8uvjIyzHKph3hYxsci7+Sv6WMnqBeMpROTYPLEFNon9olJXsCvF5vytlsH?=
 =?us-ascii?Q?v1y82rpgYVRP21xhpMrrXGdkNSneeiqTKkZsad2K38RAE/Kt3MGZnvGaeGzn?=
 =?us-ascii?Q?LYKvxu6eNWvSLedfNRJLvwonKQf5HhxRHfyQZwBGquoslxE25/bq0EuWZb/M?=
 =?us-ascii?Q?XRPfl/Pl9RRrN4jFkY9KUi+Mon6nZ36sDvu717yybUED3ERqzPCEM4tDxv36?=
 =?us-ascii?Q?002Kj0pciR4cDAm1eJzPMPJrIiP5AlKH5zz7OK65VK1ETyIHT3dEdUTGGHCg?=
 =?us-ascii?Q?frIf90j9Hn5zayjalMgUPSTWvrBX7yVRGsalqk715JmO0WciMBMjozk9/Pb6?=
 =?us-ascii?Q?TDBY4mQVLhpcDHZE1RrWyQ8hfWSnwcxSRFJCXCWS3QLtzCOPr6iJEWQO+Wmj?=
 =?us-ascii?Q?6FyV/uHeYqOByHRkKc82P6sgfrBTmbtBpG57D97XAhqj5PRpxVOFIX+8cPgv?=
 =?us-ascii?Q?5lhSick9m5yzXRtoz3ExjYC0RntAbtz4EiPpwB1OEqly7EK+vDbISLPZyXH4?=
 =?us-ascii?Q?4pucVDbHkadbHVLNclH4+mH2Sy4B9t726WbmUDpebkbOls7qIChOA41zS5Ez?=
 =?us-ascii?Q?Lo4t+2iik6ljd5t44rzn9e0q3JhSo7dYjkbeG3yNUakyvfHGq0SoZu4zFVD7?=
 =?us-ascii?Q?9hTk002pdlv9rxWfMtF5Rotw3wqghS752bvDb3Nyj2dWvwVwcmLa+W6YH8BU?=
 =?us-ascii?Q?9snC+pv3TEl3ZNcCbATIiYxUMZdGa0cvsZE9sz/QmWdficF5IB9neaPpxoFT?=
 =?us-ascii?Q?eh5rkU/xyzeDthEFhB18j+51RQeCoM4AxK1wrZOO3lFkDbokK2yeptxP/VbY?=
 =?us-ascii?Q?+ct4ngLNVswGS3Douh3A/oI3e74q07fYIoMi3Dh8MoHssNQR/VrHMdlyNGI6?=
 =?us-ascii?Q?4JzcPhvfiDAQk7wnefs5PsWXaHZtgpXUHO2zbB2iaTthG/rsAICsNEPYNXYG?=
 =?us-ascii?Q?YA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4db0618-3dbb-4aa2-bde0-08dbe10eda12
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:30:10.7078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: exhzRPbLwuNepZkgRqo8pgk8qZPfCvGDFe/ABl8vljvdFpO7wRla2gFe6KiU8usMyVLzIHQcc2WYy/dhsYQPJzNz9ZZYZG8Z8/5K11NuWj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525820; x=1731061820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kPd8+/JDqljpCZhH15IsoL+RxkD1JrzjoIqpdi8zuPU=;
 b=N4gb/Wf+tCAfB1O1OHMUqmFGyRT8obwMyzAaj2LFk33md/loAW+qWBrH
 n+j7ZuGMl0uHL0/NbhkDrPvlfI8VZTqREOHI5xh/sNokY7dC2kL4Gv92f
 XjFDSfDddtprHvhTEbbVH/W+T9R9XifslyQY1G2bdqmnZ7LndyYV3eu+M
 q8EInJcsTbnoStyZ14dO2/dUH4gusj1PhGdmw3FXH+nVLb5SoTr3qqI8b
 xIejPQDX/9R4COpAZuTffRzhTAwprkAP8cfcVSHVxkO7T0XsnVikdZ4kJ
 EjG96q4FEVQPivuXJguu+OfumPtWBB3bO/eS4OBb91CE8wIGDaROouWPE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N4gb/Wf+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 12/15] ice: realloc VSI
 stats arrays
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 12/15] ice: realloc VSI stats
> arrays
> 
> Previously only case when queues amount is lower was covered. Implement
> realloc for case when queues amount is higher than previous one. Use
> krealloc() function and zero new allocated elements.
> 
> It has to be done before ice_vsi_def_cfg(), because stats element for ring is
> set there.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 58 ++++++++++++++++--------
>  1 file changed, 39 insertions(+), 19 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
