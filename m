Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD4F461C2B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 17:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0ABDA60A93;
	Mon, 29 Nov 2021 16:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LyFftzaiN9Xh; Mon, 29 Nov 2021 16:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED4996071A;
	Mon, 29 Nov 2021 16:51:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89DEB1BF325
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 16:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 792A381A92
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 16:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCtP5SsnxpKa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 16:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D49281A46
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 16:51:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="259926273"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="259926273"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 08:51:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="499398326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 29 Nov 2021 08:51:52 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 29 Nov 2021 08:51:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 29 Nov 2021 08:51:51 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 29 Nov 2021 08:51:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIUjofi1mX7pGcEbdZmV7RbxqBOj4HG1T/SNZX81RnZMAQ0uPyjMZQqoG9rQfnLOFH+LIdVygC9Aoi0V1/qli3DxDt+WLQGeoC58UMBrKWdFm6rjLDZtnOvVCVimMY4PUVH/sGi+EPrpFgCb5OFbcpLd/PU6+8oduY26D8Vf32IJpVl3osERYXO3lWQFvJ8b6vqzfAzNkFXI7myh4WOph+NORSdR1jpRQPJh3P3f/DpL8xRB4DRsmUCWupzqU6TU+YtBsvHDE+pk+DLed5AkSmgG5UaFI6fWDdudqFoWWxIIvOr3hItEqyxJBAk0eXt+k9iILA6naJ9U5hcGGjHRBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Jm58lyi35p9swT/O0aDxWBHIZor5GfmgXq2Vmn0Hr8=;
 b=ZPPoEeH92n+qDRvSnyoVNv6XS6wytCgy7mCU4vNzbpCzgAL+UxAE3rbU29IOAT4ZkdmPDz7Wl3u+ZlsiiCkURsWzMuziTCnPdnSW4LzjZK9uMagPHkakybfD4oUliQCzfJKZqsavXr8h1qMP501eU/jhkjtLHu7kfp5RE8wJiF4jKMyio1nxT50mjVkWGBR5en9+4O/pWlWblRgGuO9eXTQ65KxqPlfMlc+OzOy7SjsByHMjv2MiY7Z45FnyUQRi+CgGR1gC7MYwc7aFjUalskIS+a8I0zJnVVglMLF21wFYkxiR9/rRQiQUOt9eOT3SjABQB+yZa+A/I+lpBRC9/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Jm58lyi35p9swT/O0aDxWBHIZor5GfmgXq2Vmn0Hr8=;
 b=gfH2WmxsjOBPg7snBA8zPC94aiKRGMippEv7o81PtjOss9E9n1ztxzkLAn5lqb7DnU+qRrfPtu7rkmVYlejCZWbwFiGIa7KIMtpZwbNhimy992mhlXqN9c2GDr0GJpEIQQPDZHHCMSh1k9T/rLXu7xbJYf9NWQ7nxSUcXslLJO0=
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:95::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Mon, 29 Nov
 2021 16:51:49 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::9483:c8c5:4eb0:489a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::9483:c8c5:4eb0:489a%6]) with mapi id 15.20.4734.024; Mon, 29 Nov 2021
 16:51:49 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: add support for DSCP QoS
 for IDC
Thread-Index: AQHX4Jm+eQLLLaOLfEWy1RA2N3z/H6wScJoAgAhQbfA=
Date: Mon, 29 Nov 2021 16:51:49 +0000
Message-ID: <MW5PR11MB58116167F5FF6CA513C7B741DD669@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20211123182536.315714-1-david.m.ertman@intel.com>
 <10cc4a54-0b25-3c3c-bcc0-41b8bd096cb5@molgen.mpg.de>
In-Reply-To: <10cc4a54-0b25-3c3c-bcc0-41b8bd096cb5@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5c23588-22ed-4afd-9d47-08d9b3588961
x-ms-traffictypediagnostic: CO1PR11MB5202:
x-microsoft-antispam-prvs: <CO1PR11MB52027C60E5977F41B733EF72DD669@CO1PR11MB5202.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gi8X4MrS9H+hJCUvo38BHvA5XFth/rzfPnLtrOjwHHt5TGfh6GYN/sJMvbkoY8kx7uJuoX6rvpGRHJZ0sLmdTmN0FPvs7EROmwFrk7tM2RAXLYeOTm3uQXQKKx8V5mCJj1F3ImJOtLIDuXhjdjea9XyVvE/P20NRQ2U6F9xs9fWfMUrjGB+OY8tFJE+8Um2aiELH+V8S872Rw/Lf01pQQ+7Y/mQuEkMNg8w/rbioFrLyADSFAK2KfLRYNEcl1ahChRYZ5q5RyjFE/lHEloFxGR8JUmhAOUIQax0d1dk7LHpbjkyNFCZ2pF6cipUKNpliDPw0ngR404VMNct+g+Gn49pC41o5nOCXqAF3VNi2BgSGGC4JNj8/oGWKGa/xrk9Kr6vgFxITDGyymqOPksAKMWxz8e3tdEdnmPz+NsueQcXrZ2rPhs78Kh5qi8mvtuKNTwXs25gdn+UThlcs10cWKD4rNzmmmNMwRrafZEoyFnsoJG5GHTwaXMuIyT9ezRHzaKu8ciuPM/kbTwPURWWnIV2VVrspcs25dnGjwwbwufszc2Dfm2duXMXfv+jt/bBhg5jBHfmNMdHv1xssqNm68sAi5hJYx4lhJbapX4HW7ny8fuJsUd/P6VuySAwiUDOs9JvLifOMcJclx33QHiAHutft1Xkf2nJ95UgUkPvi7DSUrwukHJ3drV4CSwCkMa1T6xH+thVTj3v3H4h+XlxDSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(66446008)(4326008)(38100700002)(55016003)(64756008)(8936002)(6506007)(66556008)(7696005)(66946007)(508600001)(66476007)(38070700005)(122000001)(5660300002)(76116006)(8676002)(83380400001)(2906002)(71200400001)(9686003)(82960400001)(33656002)(316002)(26005)(186003)(86362001)(6916009)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ung0NUpnTWUrTitQa0x2cU9YSDJlWWpvT3BtQUNBZmdld1pxaGl1VkdKUU9a?=
 =?utf-8?B?WCsrVitCWE83aUR2M2diR015MnUzK3p1YlFwNWhKamJ2bjAzUUxjczlXYTVw?=
 =?utf-8?B?ZFNvMDYzcVg3c3VxZTdwT2JkRVhveXRZM01BM2J3eURzajE2clQzMUVvSGdn?=
 =?utf-8?B?MUlyVHJFYUpLdEttUmdRc1VWdWJ4aVdyaTJtdmVneC9CNSt4SjJzVHp2Y1Qv?=
 =?utf-8?B?eGdlZ3VjYmtyZ05vdFdrdVRzODMvdDFGQnc5NkJaWGsxL0tlbnA5WGZxTEVr?=
 =?utf-8?B?L25kQzJMWXdwcWJ5TmhkUStlNkJFdzk3RDFmVlVQS21EWndNd3AxK2Y3UVFu?=
 =?utf-8?B?bXdvOE80OGxWbzJVWTAxcnVwbnR6amhzem1lN3o5aDRwTzB3bDZYRUJtZlQz?=
 =?utf-8?B?QWhDTEg2bG9BaXIxRUdzOXBMU1dRSHNJWlBIbE1uQ2puZ2dRQ3kxRFgwNmY0?=
 =?utf-8?B?cHlPWHNUTmtXMm5SZVFLSlFjZ21YVllqU2NLWXlHTDZvaFEvdUVKVUYzNG9R?=
 =?utf-8?B?anRjT0wyTDdxOXBCV2hZMUpaL1VGaHNRVjg0VlhqL1oxTjYvaEJBMWROeG5E?=
 =?utf-8?B?RjB6Z1lIdGFRbEpQU3dvSUFiRGhNdnBiRnV1WjNkRWs3VEluM2JNZmhNcldS?=
 =?utf-8?B?Ny8zaWpzN1Y0Z2NSanZ6b2d5VWxYT3pVTlR2UzgvbTkzSGVWK2N1VVd0T0FR?=
 =?utf-8?B?cG1udGFQMENqS29mSG9NRmJtUCtpSFdqbnVMcDc0VTVPbklnQ1VIRktoYW5y?=
 =?utf-8?B?VDZNMUF2MzdiN3F3MVQ2TEs3TEtLUXNrOWE4eENtUi9KeFZJQnRkdTFkVmxQ?=
 =?utf-8?B?Ukx3bDUzdEpvYkx1VFg2ZzBqR0VFZnJxTmd1VGMxOWNEWGd2V3BFNFRMUXZz?=
 =?utf-8?B?T0o4M1lZWWlWVlJzc0E3RENaZ1h5WWZtVkp5b3hTdzRmZ2dXekJzb25QMHJ5?=
 =?utf-8?B?NU12dkUySXpuM1FScFQvSHZicUtycTZNSndMUGl6czV4dkludUJhNkl0N0tL?=
 =?utf-8?B?NVgyS1FwQTRnOXYzTDJaY2Y1bjIxTXJ3VjRidkZNY3JtTVlQL3AyOVk5RFpa?=
 =?utf-8?B?RnJSZDAzcjBtSzl2UDYxRDBYdHJJMU0xbUZRNW1rdTNrV2VNK0ZNSHY3Nk1C?=
 =?utf-8?B?c01TT0xsWXRuSTBzcXpIS1hBWExYVFdNT0NodVZSb2xMZ1VvaURRc2YxKzNY?=
 =?utf-8?B?U0hyZEdJaTByZTBYQ0pUanp5UHAwYXNXVFpaR3RtdjFVYnk3aU5xdVNoZnlr?=
 =?utf-8?B?SGdUT21INUFZNnZsZHgxL0Fva21VMThwV3BKcFZ6dm85SVZOLzgyTFdHcDh0?=
 =?utf-8?B?Z1pROUlTVTlQNzlDZEFXNzZiSjUwZnJQUFJCbm14UitGM1U4OVI4RXZtZmJx?=
 =?utf-8?B?ZThQS2owTnE2aytmZWZoczltZ0xwYlh6QUJKZDN6S2hHN2dMN0pmRFlDcm9X?=
 =?utf-8?B?STdXS3RNazArU1hjSEt2d2dFcEZVSGp0MlFTQ1N5a05QT2FzaU8ydGF4c0xZ?=
 =?utf-8?B?bkdrd0dac1pOanl0Ny9XSTdHSFYwenpxN2MzU2w4bW55ZzZubkFJY1A0UnYz?=
 =?utf-8?B?T0p6SG12T3pZMXV3amNWWjRzbGhXT3B4RkhYYmhTY1NkV2p1ZHF4RDZBTWVR?=
 =?utf-8?B?Q0RERWc0WHY2OVN0Wm1xUDc1WkRtZGVRNjNzR0dma0RsNS8rMm0wT1NROWZ4?=
 =?utf-8?B?UXRUalpESGlKQkpuRk12T0lCa1M5czFSWnVMVURKaVJDWDVUeFFWbm9ydmxX?=
 =?utf-8?B?UnNqR1c3a3A4MC84ZWprRlZ2STJCNlcyVXJoc3g4dSswR0JZN2ZQVkEvcUZQ?=
 =?utf-8?B?Q3RVY3RZaTBqSmp6eHdnaW5McG04a1VkTmQ5TmwwODgyNm9mNW9ZNk9WemZx?=
 =?utf-8?B?VURWdi8wT2lrUDRHc0hSbWI3MnBKR0RDTDJWRjBBd2U5MnJkcWNKSysxU2E1?=
 =?utf-8?B?TDRHbkkzRUMxdFpCYWZYZXNkcStRRmlEYUozQmlLOWtQaXFTSXl3RHcvNStL?=
 =?utf-8?B?ZlNHR05CZ1llbnRkTGhhdExtL3JVVzFFQjZ4YU9qY0hxUjZUQnVnOXNxWTlv?=
 =?utf-8?B?OUUzVDVnUUw1OXVtNW1YUm84aW8vUnI5RWpVT3VZVUVqWEMrTUxmWTMwR3VO?=
 =?utf-8?B?VGRDWjQ4NGxhVmlubjRhRkswcGM1MEhFL0ZjbHZQRXp6Skw2dzV5VlgvcHRD?=
 =?utf-8?B?Q2ExK1o3U240NUJyUGxSYW5GNXZqdUlTMktKZ1dUdTdPUkJVU0s1MlJ1RFl2?=
 =?utf-8?B?a055Ui80YUNOU0ZXdTFHbFhUenVBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5c23588-22ed-4afd-9d47-08d9b3588961
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2021 16:51:49.2029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iF+wxPq0Hs4nJOng7jn9Vzc4IeoV5Mf+ZhSCNgsRWqbLHuugvJ4F02edLfoV88ph7vcS9Qypil9r2Wvkt7vyGB+jhEZ0ox3oC/Gv69Rcj+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: add support for DSCP
 QoS for IDC
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Wednesday, November 24, 2021 1:52 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: add support for DSCP
> QoS for IDC
> 
> Dear Dave,
> 
> 
> Am 23.11.21 um 19:25 schrieb Dave Ertman:
> > The ice driver provides QoS information to auxiliary drivers
> > through the exported function ice_get_qos_params.  This function
> > doesn't currently support L3 DSCP QoS.
> >
> > Add the necessary defines, structure elements and code to support
> > DSCP QoS through the IDC functions.
> 
> How did you test this?
> 
> In what datasheet (name, revision, section) is that documented?
> 
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_idc.c | 5 +++++
> >   include/linux/net/intel/iidc.h           | 5 +++++
> >   2 files changed, 10 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c
> b/drivers/net/ethernet/intel/ice/ice_idc.c
> > index fc3580167e7b..263a2e7577a2 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> > @@ -227,6 +227,11 @@ void ice_get_qos_params(struct ice_pf *pf, struct
> iidc_qos_params *qos)
> >
> >   	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
> >   		qos->tc_info[i].rel_bw = dcbx_cfg->etscfg.tcbwtable[i];
> > +
> > +	qos->pfc_mode = dcbx_cfg->pfc_mode;
> > +	if (qos->pfc_mode == IIDC_DSCP_PFC_MODE)
> 
> Just a nit as the compiler will probably do it itself, but you could use
> `dcbx_cfg->pfc_mode` in the check, and move the assignment into the body.

That would be an incorrect implementation.  the assignment needs to happen regardless of the results
of the test.

> 
> > +		for (i = 0; i < IIDC_MAX_DSCP_MAPPING; i++)
> > +			qos->dscp_map[i] = dcbx_cfg->dscp_map[i];
> >   }
> >   EXPORT_SYMBOL_GPL(ice_get_qos_params);
> >
> > diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
> > index 1289593411d3..0a90f301679d 100644
> > --- a/include/linux/net/intel/iidc.h
> > +++ b/include/linux/net/intel/iidc.h
> > @@ -32,6 +32,9 @@ enum iidc_rdma_protocol {
> >   };
> >
> >   #define IIDC_MAX_USER_PRIORITY		8
> > +#define IIDC_MAX_DSCP_MAPPING		64
> > +#define IIDC_VLAN_PFC_MODE		0x0
> > +#define IIDC_DSCP_PFC_MODE		0x1
> >
> >   /* Struct to hold per RDMA Qset info */
> >   struct iidc_rdma_qset_params {
> > @@ -60,6 +63,8 @@ struct iidc_qos_params {
> >   	u8 vport_relative_bw;
> >   	u8 vport_priority_type;
> >   	u8 num_tc;
> > +	u8 pfc_mode;
> > +	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
> >   };
> >
> >   struct iidc_event {
> 
> 
> Kind regards,
> 
> Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
