Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B26661FA8C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 08:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DAA7882AB;
	Tue, 16 Jun 2020 06:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHWQ7p0hTfsj; Tue, 16 Jun 2020 06:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68CEE89529;
	Tue, 16 Jun 2020 06:24:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B30D1BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 06:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 962C6876A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 06:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEw2MzEKIVC6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 06:24:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFEA88768F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 06:24:38 +0000 (UTC)
IronPort-SDR: VqYe+g3pRrPYQP+n5DizmsbGkxhknhOqZNsrIdQylhPhol+4PRnm6YFAYMKySu+FEux+juGQxn
 4Q/CfrXOvaYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 23:24:38 -0700
IronPort-SDR: c1MpkkyEmD4/uJrxBcHxVrEcQSGpJUlyFpZzmbC2snNicQffZ0AaWIv/tKUFAUzJOA8QiFhaZI
 Pigu5YpUZowA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="308364205"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 15 Jun 2020 23:24:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jun 2020 23:24:37 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 15 Jun 2020 23:24:37 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 15 Jun 2020 23:24:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 15 Jun 2020 23:24:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jI5Ztg5E7Nhm6QL14qgZRxRwDdGcWEpG7bjssnYxzXC4tHWrT/HgGJq2/ayFN2U3wwtXOwlGtNWdZIlKWEZ+47w9mw+nUnEZXDxjzgttyHNp5zTxNV7mYnmW8AU0EKP5mBkKpcS5FHolWYqIuDzUmXC/XwONk4psgfQisPYJ8rZoJnWGVBKUTOY/9QmIgWqbHmSGG/10VuHjiaa7VIq2J2kVdGZCjGMBLd3yyHlC9huePrYLUnpunOjIfEG363rfjSKegv9FZGAH9lTrs/LAOQ/xZ91mrSDk2eUtIiHn6JW2BElH1dZfl3Mp8JxYwTbRhtLpMigwb1ZqlVjBojb4iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RCgWR1c5Wx0OQ+j4W5Usb4QDwmaQIPjG0pGdR6jS5E=;
 b=aKSfD9ITfknYwNOKg+QnxbDcLFD/nN2lEvw1B68RPP3zpdZYfOhz6HqwJohK4AgBdoaj6raIhS2JBiafsldRtRKLVKhbNzXEMRWYsNndasjGmyH7G1sbBwyemgWeu5CTL2MqRHeEWjqWOxo4FXdgnvQH0TrlMqFnbNgUTPc8n/NH5czL8S6a8YNqk6jKi/4HQhEh3zbTBy84Lt7ceuBFPMJ/uu8OyDeLdJHX4kxfy5V4C7RoBk+jgtUaxiXJHhCPr2dHc0hRpgVNLkvkE5g0obD0StSszxHTirMWzkhYsJwBR4YP6TrXHHRD8oVWEG5JIWXvyAjzTCeFzAgzxp7mwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RCgWR1c5Wx0OQ+j4W5Usb4QDwmaQIPjG0pGdR6jS5E=;
 b=YZBz05dWqmW7KZjVs/Fzx8KOzgphPh3Ej8I/R1FUtF28Qt1kq07ZzKOBIFA7TtaLCCfLyAblmSQWsW+C8r3qRMK7zb9BN83sgHY7nTJWuHMhQwUw890TDYCIkZnqFcdabtnDPEaxmcEwunZwjAJzVPho2OjSX9gnl1/Zb2SJ38Q=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4281.namprd11.prod.outlook.com (2603:10b6:5:204::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.24; Tue, 16 Jun 2020 06:24:35 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Tue, 16 Jun 2020
 06:24:35 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add initial LTR support
Thread-Index: AQHWOLKhg1phL0N0ZE6SPQ/p8VfSTKja24YA
Date: Tue, 16 Jun 2020 06:24:34 +0000
Message-ID: <DM6PR11MB28907C7AAC7843A1236169C4BC9D0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200602075047.19085-1-sasha.neftin@intel.com>
In-Reply-To: <20200602075047.19085-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7541c1bb-afcb-4c68-e90e-08d811bdf057
x-ms-traffictypediagnostic: DM6PR11MB4281:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB428162B0E3B0B28381F8B6C6BC9D0@DM6PR11MB4281.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TEZ/1gJCNZ8eoiCUv2Rc8RxnJhFkMcbxMMlRKqG/SBNIYmOPIDE7scFzNtDgrOabVnq1uYLTF2EInYgOeJSI1f4STfcEOa0WrRuANgauK0+Ex1U/0Bn505k+PGN6AvBYMBzXrHuXDcqzmF13jUS8gMJkqWdemUz806vyNzpm10rZxCEDlxpsIWvBHGocXzhvfMieBc/uzTfLCZp8ZMcc8pDRqbvQbQnLkoDNkWSdb2rREKjY8qgfbl0BgGG5QlUq8bD+/0if+PG3bjC1gpIXEd2zLloGQHV1WbZurr7PdCZP/uyHvQQpBsfO1iDojKqOn98JONNeRUZrjUVPkbMqmw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(366004)(39860400002)(396003)(376002)(83380400001)(8676002)(110136005)(55016002)(76116006)(66946007)(2906002)(8936002)(66476007)(64756008)(66556008)(66446008)(26005)(5660300002)(53546011)(6506007)(186003)(478600001)(52536014)(71200400001)(33656002)(9686003)(316002)(86362001)(4744005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OoC4rw3kaKWAfaH8C+5AyJew867M8igbKy6hcTLuUCOCbwKygXwy693cROfViEle1eE8PbupgBcFWxTElw4npWm+PUkU6+SLU3vksf5HAvcSGplsUt/lIl8I4FGTGFGBGX/81UnF3yByLQ/duGdIpLk3qAleAHWIRuIdemzYAQsgH+cj53Z9HLWN9KPAFfeTqHKwSkjbjguSBUpvoxM1MFHVbbjS3miEdUhnXzSRFI6DZtC1m0NxebCu6ujs4+YpFJA0GOV6PgXeMPLTdzsG8bOu9AyFyuhWU0p03MvCtRX7flF7ROz+8lYGQ7ITyvMeddFTddmuCunEcaxPBbxxUdbjEdn5B5/SISlnGya0APock+xr8zR0UYvkTLe9uvtN8Gh1fqa8Z1EUkd4kgUeJE9E4pxyn1MMqAgXOtecuDDaP73KcCRVHfHAYKi06nChbz4EfTlZ2jLZjcPXP8byxsEARgtRtFPQUnoe3WFSWjg7gi8mxgJmpM5ItEM/LPQFw
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7541c1bb-afcb-4c68-e90e-08d811bdf057
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 06:24:35.0570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dsnP2ny0unw0fFre6CFzSwXKO+90YWI8oubspLwVTv7Po0Vb9ovGCrui1W/N6FUr1oAxPeyarhxMR1BDOxvmmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4281
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add initial LTR support
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Tuesday, June 2, 2020 12:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add initial LTR support
> 
> The LTR message on the PCIe inform the requested latency
> on which the PCIe must become active to the downstream
> PCIe port of the system.
> This patch provide reccommended LTR parameters by i225
> specification.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  27 ++++++++
>  drivers/net/ethernet/intel/igc/igc_i225.c    | 100
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_i225.h    |   1 +
>  drivers/net/ethernet/intel/igc/igc_mac.c     |   5 ++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   6 ++
>  5 files changed, 139 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
