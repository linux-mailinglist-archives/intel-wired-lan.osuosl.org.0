Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E631E6DE2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2604925C1C;
	Thu, 28 May 2020 21:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYUerKfoEOTC; Thu, 28 May 2020 21:41:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A2EB42155B;
	Thu, 28 May 2020 21:41:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C75FD1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C3C6E88F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z98OlD-7LcKN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:41:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42ECF88C67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:04 +0000 (UTC)
IronPort-SDR: 2rRWPZhUbxAo+i6KuczhstSLXusgnTKYtTcjr5JxCSl0VqbMKS3YPTb601+c/KHteHQru9gAu6
 dhU0axzVF3yA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:41:03 -0700
IronPort-SDR: +5MQoW+V2Epee2cuLxoFHqmbEd6PH5ho+GNspjAMl9wCSEJv5ysahXaNve3AIHF52sHoJod28s
 Yiz56iEiDq1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302944107"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2020 14:41:03 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:41:03 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.57) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:41:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GDSlsHWEu/flghrZHV2kM3WTvYwIcOVK9ySL4hGGivTllQtFh4VRmTikxintqH6YrEKiQwFPwSzNC767GPukpGTTqOBZ24uWqdesVbpuWL45lW1RU413xNr3KB+uNlajjU8825GbjuQA8duN1j7e9uZDun0OAhF0jkEfN1bp9Nmdl5aJhti/RaXPDchRo8bN+EbttXqhz6vh71OSAjv+0xg81y7Dww4gvccOS/UM+YtGtX9NWc0Q+3pD6vrXCpLWPLYVGtWgEYc3Jpqgb57KY8mpy82Uzli8ccFSpUCFXbrTegQIIQB0v4uwoGKoIfHVIFXX1Nl/pzQTypb/qtlUUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aDy7KanRRZCDrpPFTVQ+edb0eNpGfC3tRvpM/lD0QcI=;
 b=UNiZa+YMbgAgFM7luOVr2eoEsA+7REJISXjvl2f5bQNvEK1H9etKrsPnKETdSQU9UqQrBujr5YbiBUwG72ViqeTm5zDKNMoTesxmRMK6z0SnnziFDc9RQxLJ2ly+HMQTbCnC+4SBl6y6XzeduLBJssVX6SZPG7HTHaCiDQKguv79uaYvEFpcvNBQeAWQDtUeJZ49QVlSAEO/J6bMwDKRvtH3QKRH2gnm99jwR7wMoW85QkcMMj8tS0tpXVQ8xyHnpuvi4kim5R9HuFkUPZXmbzTzCu3bEISv8pnoc7n5G5fmTh59L2CFsHCuEZgfZsD/tJypwt6KIUi5eQgioBw0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aDy7KanRRZCDrpPFTVQ+edb0eNpGfC3tRvpM/lD0QcI=;
 b=gvktK/hBUGa811wI1PvnG4lY+XVuE0mcEGSiWO7UmMdMwmnbdraB4eH3N3IS+i2d0oCulPFQb46umDZ1d1NlK0hRORfk8REO62BB8xDan1OPqhH1H/mQ3hb8GpvxZzGobqfqYtMjl/P98/pGVn+7CgFjdEwhT/7wpi//szhD62E=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:41:01 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:41:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 06/15] ice: Add function to set
 trust mode bit on reset
Thread-Index: AQHWKxyP3Fsv3nZHeEyCJCvfdoBwbqi+Gw7w
Date: Thu, 28 May 2020 21:41:01 +0000
Message-ID: <DM5PR11MB165930A38F2E3F64C06EBC538C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d3cc7a9-e524-4af9-e45c-08d8034fd12a
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB204330683C8C1BF2E80FB7078C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uFkkHV43O2KavPZgx6HQJTvtGcaskDqCrfK16X9ChkppJcrvMYwt9ZRHv5jPG2uX0t9Y0PVC8pkcffiXYG1rM+6wJHQBUyq5lXREI4cIi0LIpJZUEA9eOv6DW106KKYB0nAkDJvQzRpof/zl/jRKyvl051WPM9oYnHCTtGPYNemVSXoaHfx8ooqhpXw55gbBAdCreLCPcEOKSwYS4U2dc1ZQ33HU6kRB2o8Gdkp8xHZXG2O7MzppJ/vYhKjqcyjkPJMFOyQ4TTyYMACQJQyJO3hQ7d+1SEFRnBQ+KMwpHHr1z/wWC6mb+KzCM5BYQKu5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ppIlDe9w5lhC35u2tAdfs2hC0/O7e3f61EMRLOvs8GbqeBJptgFchxNLTLV3s5tLKmpVI+xwlpfe2GGMM+wBRgIJSW1raU8YeYa6ZuryBhnhrNMb3E0QF4M+KVxUwAn/kR+MbaIisXgN1Atq8QdQHvfDJXLdgljYadLaz/ba6ui0qL/felLrn5B6JZ4UAZBUKdCV+cXVqkocJcuHwOfgyRJ4q4Ihfikzg3219s6hjrJfh8o5jDrl5cQcBLUMB3MSE1XGgd6VMuchDpf78I9ic+E9K2PJtR0gjbdmcrUm91TpuBnvc/vg4wJ4BoRmJSapYxSY9eFhGI+6PdxAIyEDGbal/VuljW79BZVr38/6sHi1njKs6ugXsfHwxIwgnlz3XdQdJHuhSRV0bl+ekXUydH6Y35KpFM5XihCw+mjsf8z4ttyFwAtahDluSj9N1kAmJE1qzDBbCQ6FrEBdmXnxqAHZDMmqzMq0aX3/6HxwNeY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3cc7a9-e524-4af9-e45c-08d8034fd12a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:41:01.8004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NsSxmuDoLoVfE6wdSNhNbsdSLXgxNZTLR4H2Z4/6jW7iycAsOXvaLsbRnpwM1V7rOXPL/HPTmzAIyRgImQQCDf41+fcEZIwXozsoMnqiuLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 06/15] ice: Add function to set
 trust mode bit on reset
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 06/15] ice: Add function to set trust
> mode bit on reset
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> As the title says, use a function to set trust mode bit on reset.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c    | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
