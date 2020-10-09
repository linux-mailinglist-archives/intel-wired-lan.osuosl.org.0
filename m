Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5455288F00
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 18:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FBB7870CD;
	Fri,  9 Oct 2020 16:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCPTsOsIPIpg; Fri,  9 Oct 2020 16:35:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9134D870A4;
	Fri,  9 Oct 2020 16:35:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 825B31BF255
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 16:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7DB29877D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 16:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tuw2Pwq8a1yl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 16:35:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8151E8777D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 16:35:40 +0000 (UTC)
IronPort-SDR: vjbMAN0ROFvG8EeCRwanq4WaHWf+HT3Q4cREn5RvBT3d6nusoP5pxdWUX6uAPBr/kH1PZWuO4U
 Me2XbXZvvABg==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165620807"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="165620807"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 09:35:39 -0700
IronPort-SDR: WZ/uj99NQ8+QJQgqhwTEqDSVnxiKR/vVkzBJ3qkFandR4kHHeaq4KaOW6POj4rhcA4bQ/rt45/
 jpWwO5LW9w3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="343900811"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 09 Oct 2020 09:35:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 09:35:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 09:35:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 9 Oct 2020 09:35:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 9 Oct 2020 09:35:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Njv9NdaEZZ7atWucB8ZDdix6Q+5iuifmg/xDoddysari4D95s3ZPurHyAHGjKsD6R83wxatLreHuPkjBUqYHE22+Mt3ZoXbfMW5HJRLDsVNSwWUGW8h1yTyXbxbxK8HpfnQTSQbtx7PviEvTJZgXt3sXxWRyqhzcYWhtupjAtCN8gU4z40xcjuJykxGimW0wta5+JH/y6wYzdrg2NhV+cYk1CAT2Pxy07l/cm8bhz1OI+wd6wsUVLYxaUIaXOpwA6fjngC/OxUv7RwlT6daD8qqhKiPu5omPCIi9S2zNPdAdS0mUxCDIvohvl8wptihRdlqBWFwCDklifcJRpNCp6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kjRJamqhVQ9GZIg022go9ANMrzsfoCmM7XSH/lj7/Y=;
 b=lbZQ9Vhu1grh1OxYHW8DuZNgqK6sm4vrUG+igiVRJ5Fhz4++TLQZAUie4POoDYXiYAUIF0HWan4AYjWwzv4X5nP1EPVXby/irkHMYLPsT+TO/qOVIvnqafhXF8ZU43wAb5qa3QOQcQUuBHwvfnYSdCFyZ1QrF0UhMhqqpR1ZS6cD109Upu2Zng0HHVfw3lcI8htgylkNtrPicFAnuWD11+UlvRRrQ2UaY2FL5TkQ1z5X1EQrISQrCAvfm8ZRSp/ZXxkls+IJR+fCFPAdJwnRHCT6HaRZUHx90Px1GjfvgfKTJRYb+Dxb6xnO0YACCaajQR5HHYC3AvwGzlkq/57DeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kjRJamqhVQ9GZIg022go9ANMrzsfoCmM7XSH/lj7/Y=;
 b=xHGkekS1jWb8iF6yOhaFIaKihgYZUeR7ElY6kIrnhws79UVniTdc9ANcthx3WiJy/hN9DZY7Gl4SSQTRcJ0nvBUVYArYUTWA/e7Q+8KVnozcEpWqo7Axt8xRQnmVsv+vgzaYY4vT/kkLVvMKyc9uaoYS/gI1TsEIQBg401wWz7Q=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5067.namprd11.prod.outlook.com (2603:10b6:806:111::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34; Fri, 9 Oct
 2020 16:35:35 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e%7]) with mapi id 15.20.3455.024; Fri, 9 Oct 2020
 16:35:35 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org"
 <kuba@kernel.org>, "shipujin.t@gmail.com" <shipujin.t@gmail.com>
Thread-Topic: [PATCH] net: intel: ice: Use uintptr_t for casting data
Thread-Index: AQHWngQkSlu/iO+FDUuuiDnkMIwO46mPeGMA
Date: Fri, 9 Oct 2020 16:35:35 +0000
Message-ID: <0e4c5d21c237afb5feb297b10d63550a15868ded.camel@intel.com>
References: <20201009061827.1279-1-shipujin.t@gmail.com>
In-Reply-To: <20201009061827.1279-1-shipujin.t@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a482c573-ad9a-4d4e-8934-08d86c7158ef
x-ms-traffictypediagnostic: SA2PR11MB5067:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5067D16614029E867AADC081C6080@SA2PR11MB5067.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UkkC2JTWbgp0WIdDSJ3SFuXIHLz3Mrn7s7UwjnMbw215p+GW1homdfQgXQdMDLj6rWHYfVrzmw/uSjIFhaFxwQ9c32E+rDte57r1B+4q1iQZkDMjZUM7MnKzhVyvSI7a/dihzLKmlsFflKgNviduZpxra2kTbi5cm3f4X5Cab3TFU4GbhllDZJrgdmpmA5uoy7N0vdSe/Hdm+zbQVm1SVgAd2f+5l327PCWNk1NcU1wUomEsaKDQUsPDA+wa23m3r1D8+fOOO8vAhjA7TY5/oQ8q808G0rGVCuxgoEHcSC8mxU+WgCL2/WX8N0MMj4wl52DHhsfG6VI/3DakTsTVwbytbIHpYik21TJ7W4IthvrHrcDh7xtVpiGKxaOJ64wyOt6OyCtCYFS/6BV3UwFtg4M1+0d8gj1RQUp090lXX2Ctwqop1RwmO9RNXn5T8Hx8YOBz08Dcx736FaXbO5ZdGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(83380400001)(478600001)(6512007)(8936002)(2906002)(66946007)(8676002)(4326008)(71200400001)(54906003)(91956017)(2616005)(966005)(110136005)(36756003)(5660300002)(83080400001)(6506007)(66476007)(66446008)(186003)(66556008)(76116006)(6486002)(86362001)(316002)(26005)(64756008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: k8+LB7KoJVxYgz+O5pr8Ir0CENLB9h6UWssOirVBVRrIQ9ruZ/WtcqC+SeHaOkNJn3aljseIbc0AczEnJanRYO+kE+fi2xw/Ol48uAx3VFGGlPe3wUWGiHRFeEitiUu0ypx41aee+PrbrKDHx02TZrlcaenyT12ai4ClNdjYPrmELwZtRRwEf00kPiW9NT2Q0UirI/CS5wYy56F/JUEg4Jw6CpIQeZJr/Hej26pvrObEMPX8fwK7479xm118eTvi5Eqfy82X+76G0enqO5Yo9eNE51+PgZN7y+og3bdVLKO/AT/VBcj8MY2/AX2ldgCcGgTp8IXL1nx0VZm0DAvhxYlGXfQUwp3kgelB5IODiOiFBbgQuZy71aX9u+AIRq61XLgvB+0XdJAUKv5hbF0QqfzrE1vJ5g/jQuHUExnENgIMyNfap9YFji7K5PksXCqnNmuhoQRVpqNZ6rDYaGrUZ7sQDQpX559PGjVfCD+Ekj666BKkAotgUCD+Xb+3g/rk8JSEfMaqTBFlSWYSavrG/KlYdp4MwZLaCvUub+tSUGrn2zZTMshnzdnZmneM4ykTnjQA9QXQCbxWs3/+/WG0cy149lm3oK906cXI//bnRUwLfdxs6gu/ElkT8NbYS64np/oEHm81bOU8yCFY4uh3ug==
Content-ID: <232174A861983B4EA397A07FDBFC3185@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a482c573-ad9a-4d4e-8934-08d86c7158ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 16:35:35.0863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aoeAwYnUJkCIG5upPwPArb+ExTmaiFqhZvYXpscf0OlUqVEtEj5CmQAjR3/XbmPSGeuUkC+iRvVkSZGE0NQeG+g0gMvkDTv0lShVW53voBM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] net: intel: ice: Use uintptr_t for
 casting data
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2020-10-09 at 14:18 +0800, Pujin Shi wrote:
> Fix up a compiler error on 64bit architectures where pointers.
> 
> In file included from
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c:6:0:
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c: In function
> 'ice_free_flow_profs':
> drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning: cast from
> pointer to integer of different size [-Wpointer-to-int-cast]
>  #define ICE_FLOW_ENTRY_HNDL(e) ((u64)e)
>                                  ^
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c:2882:9: note: in
> expansion of macro 'ICE_FLOW_ENTRY_HNDL'
>          ICE_FLOW_ENTRY_HNDL(e));
>          ^
> In file included from drivers/net/ethernet/intel/ice/ice_flow.c:5:0:
> drivers/net/ethernet/intel/ice/ice_flow.c: In function
> 'ice_flow_add_entry':
> drivers/net/ethernet/intel/ice/ice_flow.h:197:33: warning: cast from
> pointer to integer of different size [-Wpointer-to-int-cast]
>  #define ICE_FLOW_ENTRY_HNDL(e) ((u64)e)
>                                  ^
> drivers/net/ethernet/intel/ice/ice_flow.c:946:13: note: in expansion
> of macro 'ICE_FLOW_ENTRY_HNDL'
>   *entry_h = ICE_FLOW_ENTRY_HNDL(e);
>              ^
> 
> 2 warnings generated
> 
> Signed-off-by: Pujin Shi <shipujin.t@gmail.com>

Thanks for the patch Pujin, however, Bixuan Cui has already submitted a
patch to resolve this issue [1].

[1] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/85dcea48-8b82-d806-0026-e6b371e6a092@huawei.com/

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
