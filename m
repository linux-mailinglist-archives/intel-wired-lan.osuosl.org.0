Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE6C1B646F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 21:29:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 29AE9235B8;
	Thu, 23 Apr 2020 19:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WoPadvtLFVBu; Thu, 23 Apr 2020 19:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E04582352E;
	Thu, 23 Apr 2020 19:29:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34B921BF27F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EBF687E2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UMEeTF2CbB6U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 19:29:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 17BF587DB7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:29:18 +0000 (UTC)
IronPort-SDR: NELmMm24BxRfIEtOqYmS9312Qjn8RBMWDypHQMm8xF/i6oYQDTwfoRHMTkL0OdT+qR63P2Pu+5
 S218+WB+ElCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:29:17 -0700
IronPort-SDR: nRaIUSAsEJspzUHHK67qe/kNeaA7WrKGzj4s0ytKOo3J/zAGyD2r6Ow/G12z2TQnR59XNBKtOU
 R7hFtBlLC2Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="259533146"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 12:29:17 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:29:17 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:29:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 23 Apr 2020 12:29:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKoAuTa6J6koIbsUZfQv01elzH2MhTm7Fn8pw+xqcr6m0q7PnAz4T8T3Bf/eku0hbIZsJxwIlazI66qrPT8c3TUmcQG/OzkVnqCfWNGwixv8MyoDC6BMQGL9L5VyujxZha5NrrlRSvF5XM2KsRbxU0bYu8Y54KvYsl9WaSDKtnvwikHCthrYvR0kcN4pnWFpmlszhCcAcYFf5yycMuKCN3z0CbT48JFGwztwkGi5QOgNhmWHpaexa1vx9PZNa5gzmczLeXYBGSYApfy/LXt9IJl0AOQ+CaLCpxaKj3rmTfn0CfLSJ3T3VN+6OqKQoSqGKugtkNOOSaeRv7lC9OTfcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Z3980QrgB5AQnFoBNA/Ig+JlPYgEyWEJZpYQ5H8yF8=;
 b=iZvi+J6+6yK/BvyAo2MJbFfiMuNtkefSYCJk1FhdqCMQXXmn+D/rfWyV5IEWsRpj2LvsFKfPtgvgwRd2Faj8vaxSITN6Z8N02zFGvxy08Bkj4N4jzSKS6E4bEC/Z3ebyqd6Ur+o/ZvEQy7H3YNcYR6kg6DA5N12JLH2gPl0DRdlYGWl9+rXWTJFoMxaJdOX2HMNeGqEezC2vt2ypm3Zv0Rsb4urCDoqSZrZlaYkD9kTF2DgnATr12oYQkVhEDwhNHu0W6XYi57G6JxM7tZ047tWQ5TfnoyjcBNWpqASNrz04CYhe6BuxwpFun6fNpgvGUo2CrBhU+uzeupxIwcpyHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Z3980QrgB5AQnFoBNA/Ig+JlPYgEyWEJZpYQ5H8yF8=;
 b=pEE3iGCd7Mc7RYsTD+yBORDv7b/32TBj8gqyv43zIzO8TU8cJDiTzefO1+xaaEJ0J6XONXkOmcuDyGINVYAtTCNrAiN3OTbjlj8wDdYD80FiQKb/4Yj6R5WszfyRN1ikzQPqyTKrAgngUe43Lt+pTtbJVe10wdKDRmTfBVLmk/o=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2713.namprd11.prod.outlook.com (2603:10b6:5:c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 19:29:15 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 19:29:15 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/5] igc: Fix MAX_ETYPE_FILTER value
Thread-Index: AQHWDSCPJbjgK1NRKkiAsqSXmVQIHaiHKikQ
Date: Thu, 23 Apr 2020 19:29:15 +0000
Message-ID: <DM6PR11MB28905BC85C76836DB1D6F153BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
 <20200407210711.24371-4-andre.guedes@intel.com>
In-Reply-To: <20200407210711.24371-4-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 767e1313-8476-4f84-91be-08d7e7bc9c20
x-ms-traffictypediagnostic: DM6PR11MB2713:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB27130779014A34D7539190F7BCD30@DM6PR11MB2713.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(376002)(366004)(136003)(396003)(478600001)(186003)(9686003)(110136005)(55016002)(8676002)(6506007)(81156014)(53546011)(2906002)(7696005)(316002)(26005)(33656002)(66476007)(4744005)(52536014)(76116006)(66556008)(71200400001)(66446008)(64756008)(8936002)(86362001)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: etk5YygfXKXDn9nzSyvzwtV/lUU5ZQDKuQslTm9cc4Tc0aqaYT0xWlehN0iPcQINTEht6gd6BmYo3+gtJMbjqHcvq6eZS8r3/UJ5kanFAeU2YIw0XkxPL9vBA+CllbGJL6fkH7YG6AMxy59X8kHXAk613WFgGPGS2QzGTGMrlwarmKsrUpMhuFrLLxZnvz24IqyBkw4RyJGWPBfzmUVWU4oJ94E/QSXgqYKg3EGNCBFYqohGWQqqc3g7s7apX1kN8FZLA05JaD+mDEi8aAa/bFa8G08JuIKdqAPbAVepEz1XH9zGB6uErxskV0vMqERUvGClNezNUyIb3YxpQ/1wUl7nutzP37YYaUSp1lvGr5yjZOxQi8k82R5YW1VUNYnux5OfCgP7mqsD4erKucHUPIAhB9+95doYbtEK6Gki/Lr3b0ISEmWVR2UuYZ/l+hbc
x-ms-exchange-antispam-messagedata: gwxxRk4soCXo1f1CJEhbQCVKN/ERtQIOqMghRwQBrwSZDQcQuJXJuPQXQ6BPbzlUivp0flreSw2avLJyi96ljI1Q7BWYGymLzN+Lf9Ws2TKdFHYlRWzYDv7ZwV/8r8kMtIlIn5BqhauHs8K9M+p51w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 767e1313-8476-4f84-91be-08d7e7bc9c20
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:29:15.4353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yFF9k5QdIaJ9Cwv4CE71HFRFxkmKUtZbtFxmvSymMe2UEXbhtxiGkQ6r3dPa3oaiOt0hCnGrebpbjs1j0M6f4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2713
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/5] igc: Fix MAX_ETYPE_FILTER value
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
> Andre Guedes
> Sent: Tuesday, April 7, 2020 2:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 3/5] igc: Fix MAX_ETYPE_FILTER value
> 
> The I225 controller has 8 ethertype filters, not 4. This patch fixes the
> MAX_ETYPE_FILTER macro accordingly.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
