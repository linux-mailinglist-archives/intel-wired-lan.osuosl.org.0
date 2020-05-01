Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 545EB1C1FFD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 23:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D66138857B;
	Fri,  1 May 2020 21:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7u7UI8RqD6Nc; Fri,  1 May 2020 21:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D99A8857C;
	Fri,  1 May 2020 21:50:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0C1D1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DCA6B8857B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGtR0--+5Nql for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 21:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 468BD853C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:50:38 +0000 (UTC)
IronPort-SDR: tXMk4//eL0OmqVKA5hIC9q7UEX8qPtOIvqroOfY6M0OJQFNhV2pgQr2zwZM8+2Y+eHIiz5Q7gk
 YCS/McDl21IA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:50:37 -0700
IronPort-SDR: JOdQvzL0HVOwLnFz/kPlZSmvUogj+scOGYaHxYV3o7CpqtGTEfAtA45mh5N9Td6ojvPp66i4k9
 5Z3zs+Hnq9Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294001804"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga002.fm.intel.com with ESMTP; 01 May 2020 14:50:37 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:50:37 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX155.amr.corp.intel.com (10.22.240.21) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:50:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 14:50:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GqTBFPNvCg+EMRUoeNgfngKExM/BTjlHiwA/dmOrHM0Ld1C3u+BUm9cOGqwtKzvfyt+A0AAvn4zucG8t69I5RON0ucDRmD+QUrp0f4ZC4moQX4kveiH0jFVM3BFE6+Qw71htpk3lsho2HE1ALbtzL6BDiw0XqsoFGA8xiaANq4HeT7cmq8HUaFDe6lS+wHtaleCVSxna7sL08ZIXcShQWZDZfQ+OMtIaGcps5QoYsm/1OiDJPmeLHqrj3W8wAWYK5YZsqKXoaByXRRxuBRLmND3MpZ1F3Pr9TLcBi2X4qBk6qUxdsppG8FP/83jm4lMYM/LhxNDvxmDVT2TdV4bw5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/K9klfOXm9dG7Tc5NMO4yJMuVrkZMiagOyGsnjvwSSA=;
 b=crN1e743aWt5BMAfvObjFGiTKI9BjQTrqVV0CkgINH5SMGUFIdvHdCCAgce+KlT0SMzin9N5PtbRmFrpo3Dr2qCFVX3Sqz3pLTqKuljuVckOn4wPHKdk9SDsxnFbSny/WxnS16TKRhiNOAbcRQHJCewJSVToSS1SPRzQcKiZGJB3HyNIS13EYw+B/8nquMUHf+6ndIe6Uw1KyYPHC962zbGJkl34xTTZnlCAXqA1oY73B8cpCGG1YL/06nBHdP+Lyg2JrCkXL+sk+FrrRctE19LY+R86SgWhqCOdNqfPoJcTQw6BiumjuOj6YU7YuqPHAe8TyMpHvfQVldFT+yz2NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/K9klfOXm9dG7Tc5NMO4yJMuVrkZMiagOyGsnjvwSSA=;
 b=P9AJDxF4fxrhOWbWKf/IfoYElQAMLNf9tWGBtooYTjVqPCQZun3SsVwLpLdwJWZrfFUO0IVxGpJ7MSe5uz4WMPW7HB2TFg38jROsWS6XKGdiDBhSTWAhQ36ughpr1uiSmDusOnMIJ0il4Etvub0+Dk8VspcYgx5qLryUwtwbq28=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3657.namprd11.prod.outlook.com (2603:10b6:5:143::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Fri, 1 May 2020 21:50:35 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 21:50:35 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove header redirection
 register
Thread-Index: AQHWGIH/GIVc1KjLy0OtHMK2JCMZ26iT0/CQ
Date: Fri, 1 May 2020 21:50:35 +0000
Message-ID: <DM6PR11MB28902F9A428D5C7527AD1AF0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200422084155.36971-1-sasha.neftin@intel.com>
In-Reply-To: <20200422084155.36971-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99a41c9d-91da-4a71-db60-08d7ee19add8
x-ms-traffictypediagnostic: DM6PR11MB3657:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3657E239511186471336FA0BBCAB0@DM6PR11MB3657.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 0390DB4BDA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(366004)(396003)(376002)(346002)(64756008)(8676002)(9686003)(4744005)(55016002)(478600001)(8936002)(76116006)(5660300002)(52536014)(71200400001)(2906002)(66476007)(66446008)(66946007)(86362001)(66556008)(33656002)(26005)(6506007)(110136005)(316002)(7696005)(186003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zeNAaAl4UlyK37N8OpLnqFofPs+2iFaSyHaP2yUctazQ5cxoumWkhfR/bKsjNldc0PhLvkt6n6X18Afbv9bce9AAjOHxh23bvgrmubek9sCLMCGZqrQOtt3hf5++xdRwEvzLlWs8+k1VFWJ1K8DEcweMWduL4Iie+jL1Z4n9sR1lLoEJPeV1QKs11WX/2/wH4sXLwlD1vH2F8wVB7cFOmbVmBz8Gy1Qu+miJmFCqGXP7W1jRfCIoa5Jjbv2Bqk5/f0Prb7HB1XBzuF3kLMpKuuo7u8Wy3OvDjUOrcm2tMVG1vsNA+7jutW7yB3cA1vddPCCI0YNgwwtUrWyrtk6Kor5HNy07cRjUfJUbxOANwXbnbyKU6Ej5+rdEtd5wFtk4nRXaFo71EYrQ2fjnxz5RA+xPwYoEWczfV6FdySX0VCcLT3rJVyt6YdnVnwpvWfYm
x-ms-exchange-antispam-messagedata: 7gs6FvjzdZSymPpYyjuXc5h4Lsw58gRb82SfvVrlpFclCyXepjIL2fwwzHxeTYJs4Ps8Si608Hp0tX0RaKw+5nmpP31FKd9nuFg68phz5dr/61IQJMCuerHH/GMXpBiEx9PcICL6SsjcBUOII2rTg3Aep9QCtunY/GImencttbiByMEQZYIwMg78wuUV9ktUR+vwHwUhQSpCnhqI2pzuWIPdksh2x/1HVvZFUzTKU+r1dNiG4axYa9dnrApwgp6WdX14NugXRr7fxSw4bUV7NbfWS2sVZO0Zij/VPvgszYIV9Gv4ox4cAqENL6hKoSfc7xN2ynqBJdc346bdkPZ4Gxy4cx16RrwgVEa/lWmm+1dalg+ZcLVcIxVh9KlM02F97LZD3PkC8/d6kRft+e5RNjr8wSAEWHH+x/f88Fi0E1z8VnA15SrCyv+s4Wik7K08PMQ08GKSGfoQ0IIziInRhtp7hJHNc5HS0OmmX2kLJEyrP9hpM4WPh9liYaUPz+Tw/fDMX5qKokiKYFRw8PIID1uhuKgZ/QqmtW2ARbZCCTIqVOVRrjZWpVEPij/BID4UUBIprQXovP/L/J4SBrxbAOBqlAgY66AsQaMAOwEaTjQibUXQhCbb3+GLAIkX8L3xkSLisWZwoLjws4X5V33kSdUo80BJAs8o20R1GUdErwnrfdnBNuLOf8tlOCHM14R/8SNUNRkYXIMiZq+BcDvmULDwK1/yYfobAJ4gawGsULNJjTYwugaeR57dn4FFXi2MS+Ve2FdT5CoMAt6KSKTL9NrnttW3K84WO2tWLiPyKHu0akxsg3UcNaKSLo10JVNE
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 99a41c9d-91da-4a71-db60-08d7ee19add8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 21:50:35.2958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +wg5A2yx84tMhAfx9yf7DWcPApBbnXWkT0Wm31K1/rlq2YSApeYtya3sLEG3lYTPAD8g26aAKGEH/PJnkWEvOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove header redirection
 register
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
> Sasha Neftin
> Sent: Wednesday, April 22, 2020 1:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove header redirection
> register
> 
> Header redirection missed packet counter not applicable for i225 device.
> This patch comes to clean up this register.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
>  1 file changed, 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
