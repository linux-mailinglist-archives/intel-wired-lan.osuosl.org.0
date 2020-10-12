Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A10C28C2C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 22:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE1B822CCE;
	Mon, 12 Oct 2020 20:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85zA2znLCuke; Mon, 12 Oct 2020 20:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C1D3230A1;
	Mon, 12 Oct 2020 20:40:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E19C11BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DCA4A864C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rX-BF8wyAos0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 20:40:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A722485F46
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:40:50 +0000 (UTC)
IronPort-SDR: BtjcCu24iyY6NvXzSSrupXtn+Lvl4s9XPbpVd0iqUuXSeno+a5iM+12spREE+nkXDoUq0WYl/S
 sh1l+VLcHFIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="152732517"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="152732517"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 13:40:49 -0700
IronPort-SDR: jZMyx0dainyd2UKPL9eTrKwb2aazOst5Ji09U8cveKygH/1t1QthsBYdp5I7KDI0rGMC1VAr2F
 zey0GCHqwsRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="420333204"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2020 13:40:48 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 13:40:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 13:40:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 13:40:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m6hdfkaxldIbWJ29slkF4E6vR1D5UrkgM0oCZHgd/7Wx2XeA7RY3SOKJed2aMe+B7w6e/sWGMrTBNa1XHSYc3gLKzD98KdiKeMnYFEHsI4aSovrWkijD98kS35fSo82NMt1TzeKvpCNl9DWUi/SbjuhIV93xqqiSojVjaKM7hSe1PrhDAi1Yv0TTyeAexnbI7SSsf7owGXu9hXGw5oqOGkEUr1boanpo7kSIeV0Dyo96WPw3gnn25kbtF2B3OTr4ZyGMDS9rzxtqYW5wKDCuMI7VgKO5nmV/NxnyyoA8usTbosIWwbO3Sx10EEKHpDxSdA6gSV8gP0IIR5YzldA/KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Lq1VxOS3LmpwlcOESjizENX6uz/BmjbHdEbRFmEr2c=;
 b=RT3vaaIxiTY8DXO8WUw2FOHPFLkK9d1uuhnBY/Y7Uf6W9GChzs+2LPHlFU3VXzUvGwQrH/SPUZG6gjk167Ev4FJilTQ/hV0m295AZT0F9Mebwaqj6f7VScfwQyDaMxLdtC03BX8ULj9EmqfbBIAhk+cY2poAG9kMYZvvgSfC1vKd01G6JpN/DLNZonC7lMOy8tZ5yby1fTgG6F2y4U2kvuQekDER2vQ3ow72Xzsm/2kjT1My/tvN9B4mi1N4yH0/ch4IW6Q5yVPMbU3nif+AlY91pkZbwfJztbnN57MaTvnKW/lQC+HHlF5UtjiNjArDNXZ3yQqSiMANbUh5uAi92g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Lq1VxOS3LmpwlcOESjizENX6uz/BmjbHdEbRFmEr2c=;
 b=coMKMo1xgGdZ90OPuiHFZwy6qpvds0Y6OcuXQz6ELr1c7B1DfWvpwiUrnqb6YSRGWJxZbwoqwOTCjaAYaLfH69ast7UtJ0IGROaXk0Qt8fNM39NZflVbCvL0iyvYh0RN/h7iWquClF9dTREDKbLGOGxzal0HlDt7LWlVeCsdVtg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB0076.namprd11.prod.outlook.com (2603:10b6:4:6b::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.24; Mon, 12 Oct 2020 20:40:45 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 20:40:45 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 15/15] ice: Add space to unknown
 speed
Thread-Index: AQHWjS/iSHd6xj4EVEKzFtpjUxNpjamUlRJQ
Date: Mon, 12 Oct 2020 20:40:45 +0000
Message-ID: <DM6PR11MB2890499CBD122E634CCEB9B1BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-15-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 965fce18-7ee2-4bcd-14fb-08d86eef181d
x-ms-traffictypediagnostic: DM5PR11MB0076:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0076FBC747843AA0DE4B53B2BC070@DM5PR11MB0076.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aPHhqe5mkuHxWBlrkAI+oJb3p/Ba+bE14bH1lbEW0YsUc2yGaZsG9aLApCQuVOd9iJ80lcYnEy+G19u1UoRQYdxAC0XnrNDPtkfx4uJI7VOpvdNgCB6GOZ9ndisM1efuRbC1niqAqCC5bP//FsiXCIEgmOhi6NeJNGEoKvHo+yw8+W/9urtK3swU3DmzBvQX02l60xW2qLzVWii+IBdVTlIUhiaEcjb1cu0TWoKrj6uzkuoI46tBk9G3wmnbuXFZwHqvnDqecEBy0al64w9802hpetx2FtIem7JH3uL30o10511wc8h8o90t4k5wqj6JeyMe7Nj+9TC7MxEpBJv2VA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(66476007)(64756008)(66946007)(8936002)(66446008)(66556008)(52536014)(76116006)(4744005)(8676002)(33656002)(86362001)(9686003)(71200400001)(83380400001)(110136005)(316002)(478600001)(186003)(55016002)(6506007)(53546011)(7696005)(2906002)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SWnOZbqW2Me08m497HjzuQo73oQvrfTTQeqhnMnU9OV16rXox4wlaqsevVfq0CoBz8IV0f7Fdak286/AXmOqE+utlsj7ogeVL62ONwTPku4QsndAF6wjJqDs97bNqzB+xjm0yahI8QaOEgYkOXJ+AS6u4FXhRDXl0wAuEFiDY3lLnYaHyDaAcszjSA1nAgHB7LPn1RWREQ7dUJb2JIQERZW7U8EhMy6Y4+Pb2oZ/RERBDGNArX8ypzAiNlfqr9pNYSR630gacwFCBpAYukXLaMCPU/gaWBHAk0ciRWrdGhlvjgGQnlLr8HyTKo4wnlhrF2iQnVIhVTYONZ11Y/HXG/sVIwGHEjvZmHnUay38pauO7ZumQC5f4TFNJ27/tsp0DKnVqsaARm+2N27bf5MthuqlRwE+fbGKRcDamI2x8b5lakXz7HQSYvuGZS1cU0PnI6BPtAvO1E6RXjYL+Amrnw8VNdzuTjUUcUhYWFFMLiu5YwcGxbcF6eyarozyhIvOWaqwE/+PRW+Cb6V5To1Y6UKBjQrYVNxS2RBuByE9aQ3HAtoxQq/vN4IFsIppUygvv3uSYm9WfJ1qgGijfSTkqvE7REgf69bFcmkfzCQEp7G310eCoH8veNh/xtHopUC8pQaK9c1ZBy0H83LIOLrWCA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 965fce18-7ee2-4bcd-14fb-08d86eef181d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 20:40:45.2534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uBepO/nJEjZz2zCtgJFjPlLyKYdoNnE8BLE6OrVe6wBtLslnkib4RkD1r75AI2FbXofkUaGIbg/PznijjmUS8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 15/15] ice: Add space to unknown
 speed
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
> Subject: [Intel-wired-lan] [PATCH S53 15/15] ice: Add space to unknown
> speed
> 
> From: Simon Perron Caissy <simon.perron.caissy@intel.com>
> 
> Add space to the end of 'Unknown' string  in  order to avoid
> concatenation with 'bps' string when formatting netdev log message.
> 
> Signed-off-by: Simon Perron Caissy <simon.perron.caissy@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
