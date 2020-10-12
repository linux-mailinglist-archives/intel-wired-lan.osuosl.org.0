Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1125F28C31B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 22:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85DA320347;
	Mon, 12 Oct 2020 20:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id coPSD5mRyB5n; Mon, 12 Oct 2020 20:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED65322BCC;
	Mon, 12 Oct 2020 20:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D7591BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 58FC88648E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:46:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zpvxl1S0hbOw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 20:46:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9C6086449
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:46:28 +0000 (UTC)
IronPort-SDR: 8r1KzlgOzAYVv/4pbguJ+WhlppIgSiCjIZRmRJhpKCNx0S8c+VEsbaNsveqUYiB1B7zNzXL12b
 cmp4f+zfqu5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145666071"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="145666071"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 13:46:27 -0700
IronPort-SDR: yP7n+fwu2wowtetRqbtJtrfGI4P98ZTvKHrrEWbdgLr4TMA3Fi334+bYhcdBLk3GP6lwGuxyag
 HZPRqX6CNJgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="530112639"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 12 Oct 2020 13:46:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 13:46:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 13:46:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 13:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmsCGQnYxoxYpOnp7Q6Ug+NCiFMmEEbYExwwcZpoegk0ejqBUxAS3uO5P1yflUC06lj+c70gDVkAcDHRDPkHjUKRCXK7tCV6g+nYTvKP/Si3i+PcYqF9/WUH7GJHumzaiWoH6CJ3cdWsH4LTn8wAt9iaPc93DxdonJEKB/W6v9sm9hN/KrBlPCSFjR3TetMwFwr0vCCN9a9eIRs7Mu2EkmBQ0ebAZQplRr9sRDNN9lOTSvy6KSY+U4lQlEgMfrGQkVZ8AZN2iWhuKVf18QwiTpvKn1bplYHL6ZWgedccIOzXFPM1JnF/MpPQ0YjbgC8o1hrta80GzlP2fPKJ9QUO8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vIJwjwXA5Ne1aWzCNqqVQUfxHDlidloMeOp4t3z6lYA=;
 b=F3oJ27LR5H+54KH2ztFUt/908gboxh9etPlVqnFhbl/XdT6K77B61ednbw115AZifqZC1rWAleCMaCa+YmLbDFjh8N4S1yheHxsu+ySjLpEEEe0WZw1PiRwJ+Sh8zRE6gofdm1/fG2j6w0YPRBj5zgM6RPsj07Q8rzfanJEZXxusuBVT9EjOvQxI/upNLgUkGyige+VVQSWlQ7oEZ00evYTEMOqzi6fgcHtSf+TbkIFdZScYsEDH8hSiej1PFMuxPTRAiFMokUGZLqbgSvPoXcE9tsO5+hKv3CcEpxk1xxikYMqzYiVSpOI67vIvuzGM+w/PXuVwhQEjukZevQVeNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vIJwjwXA5Ne1aWzCNqqVQUfxHDlidloMeOp4t3z6lYA=;
 b=eEUtgsUmDwJYH2NKb9WGgHA8w0HqU4FD0E5zjrjTDcSa0+nh2CmXaEAU5YDaDFwcwN4Jrh6NQhWDZ/QAis8tNVX79pycDhEcEH6JM1MJVnKuYoY2QdKYOuPLJ9fUVdSnE4n+Xccp2ty/7rOBR29MisgpRFFBuJDuLSBb3Tr7yoU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB0076.namprd11.prod.outlook.com (2603:10b6:4:6b::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.24; Mon, 12 Oct 2020 20:46:25 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 20:46:25 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 14/15] ice: join format strings to
 same line as ice_debug
Thread-Index: AQHWjS/lmh0uQrvdSk2mRUHZ0fEkyKmUluVw
Date: Mon, 12 Oct 2020 20:46:25 +0000
Message-ID: <DM6PR11MB28905024381D4215D798C40DBC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-14-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3975c3db-df98-43f2-c197-08d86eefe2e4
x-ms-traffictypediagnostic: DM5PR11MB0076:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0076766BD5E2D7AF18ED5B3FBC070@DM5PR11MB0076.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UKYdm7whS/4B0RG41M5qrI+/6IUmN6AVRJEmAroEnp5Z81k6Ge0biV1Lza84pPsfqyAAAR7D8CqEVI81Q+4/JltWRTptrsoTTi7aaeUZz/I7cg2kgA6wwNNP+Nb4O3tD5vpaziK+aC9RhuaqOD6EzWtFYJ1ZnnMXOqhKq+TlyDx5bRzMoVekiRmmPJDjddJWU3/NCkcio0UaZbSKNH/kIec7QucyglEstmD72VFOe+hPim2BJ/NPJ1DlJSO+zJ+/OWZQOdKXGAIgwsw0DJBcZ1IxMmlx5reLkonILZDuP2A4dpVzDbRdc03h5mRxKgFV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(66476007)(64756008)(66946007)(8936002)(66446008)(66556008)(52536014)(76116006)(4744005)(8676002)(33656002)(86362001)(9686003)(71200400001)(83380400001)(110136005)(316002)(478600001)(186003)(55016002)(6506007)(53546011)(7696005)(2906002)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fdAwV0ONNQVveXeB+iJYV9oiet/O72Dh0T4oB62sUEtB98b9o5UNxL7DPeslrjqDwzFdvsrJlj3ELK9SwnNQkJj1NLM+z9Pw61ypC/zP5eCgEgd+B+Vgkdz8KSx8alz7kcreJw37q6nB31mdxcYGTiccy3GGGITHYdmAASUIoHXSPGYXbOV73X2XmrPlFMg31ztCbVqJ4og492EULfijXUTyf/Wm6t+j3UP7n0bEU7ds0yGNhmlm1T5GoWLsx503Tmkq6nBkj/S5P33Lq5Uje4ES3wSdwLa+H1TN7C2jN1ddxsGhWRtMUa2IycTwAZgMvgk707wCtjUK9cSvSZZ3v2TmhuZYREy+MI1oeYKG7I4ofzT5jXBLYt+DxbSAb2UmUT5LTGPtokvK5x+2ubhf6PWrLLKqGrm78fBeVT1psecR/jNYCT+w6yqIvdVKhKxWCp1C1skGFDr45rc3v0YqJ8Pqrqbs43X2vqq+GR4v9fYgk9PzxcsHu1p0Zv8pIhN41mwoRgSgnzJw9b3TFd/h56kxuCGNwJtnnovYrRkytz4MbImkAAbZaW0QouCRq6pdZM7hvyiWidjno9Eoi+MzJoQDvK5W0TVe6+ocxvju/7JIYy/vVBF8NW3oTvJY9wnl5Gf2XojK0YR1YYmRcBOZvg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3975c3db-df98-43f2-c197-08d86eefe2e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 20:46:25.4627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inibQNQLtlgptyZdEo0OOaGzCkndM5tnXbKzF+fljSCFmBQUqvC0UYtSFq5j5LFP9NIN62QVNWgP4US7qZNqnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 14/15] ice: join format strings to
 same line as ice_debug
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 14/15] ice: join format strings to same
> line as ice_debug
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> When printing messages with ice_debug, align the printed string to the
> origin line of the message in order to ease debugging and tracking
> messages back to their source.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 102 ++++++------------
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  42 +++-----
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |  24 ++---
>  drivers/net/ethernet/intel/ice/ice_flow.c     |   9 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |  27 ++---
>  drivers/net/ethernet/intel/ice/ice_sched.c    |  21 ++--
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  15 +--
>  7 files changed, 80 insertions(+), 160 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
