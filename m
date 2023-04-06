Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFD56D933F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Apr 2023 11:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA7ED61492;
	Thu,  6 Apr 2023 09:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA7ED61492
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680774662;
	bh=yK+7AaW47aTeOtwrw1yCoMgOXO7slKt4FK013gFBXTQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kjZHJFvrf9toMmTgezHubWuoRqSmWwW08uaqmXD1SOlaXEOkcDXGyUxTkLSyr7vR8
	 DbRyFwIBRyIBChXkF4aE2xbj7B76LfyOK2RJTX8HjISlTassYY6oaj5WJQKBeIaJ14
	 ihBK1d4WXA4qUjpK1ycwYOuv0L0ubjbcVsdv3i3GZchZNL53Zi4ue28pUFwmeqdARw
	 /WBc/dOaMFKsRCq5FfuKhukxy3CnXHJXtU7M8e3fWWcc1Gjga9aps/QMvi06Oa4YbR
	 HJHUOWLU3UmeTkndS4+Gq7JPnorzaA6+DIpxy+A/IGUN8Okc+loZsbnaiGnV7dSz8k
	 tL5UStfoK0HnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tZJBSkaLvoE; Thu,  6 Apr 2023 09:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B53060E53;
	Thu,  6 Apr 2023 09:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B53060E53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6772C1BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 09:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E3F7404D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 09:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E3F7404D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MyHvjSh4_bTV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Apr 2023 09:50:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3028F401B7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3028F401B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 09:50:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="342703578"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="342703578"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="933126998"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="933126998"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 06 Apr 2023 02:50:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:50:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:50:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:50:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUXdvYUtHWiA2aa6HSe1pMStJENx8Vm7TggVbIIEkHU+y0cQCFDzzzMUscXsB1190JSvhab2rZsYMRzwcdERct4FWUrmwOgsHJG1m6suDBCg1Vm/iT+yL47piNxtql400IZ3XNnooBMQumuINWqrr1WnwOuXpmKQ5Yqy2Wd3DLhQ+4oHUTtkDT5/T/m9rcGQjItBWj0NqEpOKFuBtsIee0jXsMovhqr7Tb/WrElBpMQ3zcdc6RAZ90N1LVOINuEG/cn+id3W0j2W9bTstW66kkFZ3OiVGAKwBdAGxysiq2qKSjHOEsLqOO05CQjVXDzoTHBLSMOuNMj2xLZnzMTT1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/9+UTSM3aUrdwQD9eDBYFjeb36Zy+EXnttLaV3cU5dc=;
 b=l+nlLVE98b6JB11eZQp6kqdRdNPkSx4b8/m3y3zmXTlf+ACAg6GGeBnty48fNjyNKnw2+uLpEq2bzcDfvIGURJiW1EQrH9w4GIQ+hSupCrRziYixvKvw/7wOA2YaMN9pCwAbxdpbGp43VTDivYI2Hl0AnxmcZ6qcb5k1v3qzaMhEUiteSatOzUvzaLNPuSrNnQegmQvXIoebG/WijvodMCMF6lKr/EL+mFTS6pGeRIekQpZ99j0yohHJ3oG1Dj4kodTmvGf1rBXfNJmKkr8OsD+Y1j3dtZIVVCxX8AD24mH2N2K/7wImfkqnk5veK6aJ4LcdyXt5fErBAxDkTPF0Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA2PR11MB4892.namprd11.prod.outlook.com (2603:10b6:806:f9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.30; Thu, 6 Apr
 2023 09:50:41 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::3788:9800:d35e:32c3]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::3788:9800:d35e:32c3%6]) with mapi id 15.20.6277.028; Thu, 6 Apr 2023
 09:50:41 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <simon.horman@corigine.com>, "Raczynski, Piotr"
 <piotr.raczynski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 5/8] ice: remove redundant
 SRIOV code
Thread-Index: AQHZXYKN+upcw3swB02xhdAOJFK/Sa8NFOAAgBEKbyA=
Date: Thu, 6 Apr 2023 09:50:41 +0000
Message-ID: <BL0PR11MB3521887E3EBBE88EC91133898F919@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-6-piotr.raczynski@intel.com>
 <ZCBKVN8x8aQ2SY9x@corigine.com>
In-Reply-To: <ZCBKVN8x8aQ2SY9x@corigine.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA2PR11MB4892:EE_
x-ms-office365-filtering-correlation-id: c5e3f504-6318-4c44-e9e5-08db3684624a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YGqqJLr/HdPM7RCWhf1J75jK96ACFzk0yALBs8XmVH6+A6PHbEikm9L8nFWLLvtNIp+1e8bghYNIq5op0oR2HTTPEkkFvLTtLiJiywrn3ll8Fx4YZzTC/45Gdtn//BPdMKXv+pbL8phGFExm0mZTzX6GBboiJmKxIw/tYFcTHNx0la/NoHbJHcXX0taMY94MX16RI0jo3SusSW7bOxOwJEhlhWwv+qkj5aRM3f0IoB6kXluO3Id2TnyqyxpNrLnQyNkJ9tHIbp74Obj9yfrK6eWWEn4YtkO1vP4XMTsfgMPwvaPy3qbJY808WbEuBkIZU3ZeYZFff3fBjdo0ny4gyjmC1qrTmsm0M3CzpwLQbZq56wEAqtm5bpWT1gUbd0VBzfb55nsIRk8ewZk8nlP72231vuR6gtngm5w4RKVrz5lnXHaRAJBunJnq5PiHV1x/SXJ97R8NCW0WqnSHID4uiukoaeDmPXAAIfCrTnUeVVvpeMGSqdvKw6nacgUXYv0/l2myMtPdDLlxtNzRGwAfJgRSrUQJy41XcECF3B51eBZ6C+SFPMFUIASRLBamZqAHHwMI9jUfaiPRjT7oe5tauoFPIT59yT/nqlrjoxEN4YLI/tmRCw3g+2l+wImmcGkS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199021)(26005)(6636002)(110136005)(54906003)(478600001)(86362001)(53546011)(107886003)(9686003)(6506007)(186003)(316002)(7696005)(33656002)(82960400001)(71200400001)(66476007)(66556008)(66946007)(66446008)(4326008)(76116006)(8676002)(64756008)(5660300002)(55016003)(38100700002)(83380400001)(122000001)(41300700001)(2906002)(8936002)(38070700005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ba5cDUmok9vS6Mqazq3iH7VBXJx3I5fY8c/Q+sPrlOFtmvJ7znA8NhAz7HQ+?=
 =?us-ascii?Q?ZgMvxuNcrYJue+rdYa0t7JugCW20Td4rQCuREOmHQGZarjw0/ATyl0a1NleQ?=
 =?us-ascii?Q?7ONWCvSFInb2eJy80WTZOdUXU68jgBm7eyzVc227By+mSWgqa9YcbJ5kpDqH?=
 =?us-ascii?Q?/hsloOEJiQQFSOcAHbvTyLhZ/aDv++pQ0IuSzGG5kxRkdlEZ2AMQGobaTEYs?=
 =?us-ascii?Q?Jn7bDHJR544FIxquXAlNhpVhkdiM3j/D6a2Fkl4KBXxWq3+0+Bt3/3mOgSVm?=
 =?us-ascii?Q?3xhOnT3oGDu6QwHs4dzVMLucAjUWU+GmPEfn41mgYMJYAofe/HyOYKuObf4g?=
 =?us-ascii?Q?LpiBbNt7EuIXLyCGvDfAdqD1azunpq0cfG1rSCT+XkK4YnzYne26yCjsd1HT?=
 =?us-ascii?Q?YA82mGb8OtQrSrLwOs3+Uf5J/kZhzAGCAtuRjO1TxXRhfuhy9eNP09WODdc9?=
 =?us-ascii?Q?up5QOl6aH/O3YQXD4kSOwIpXp1qWWki2oD4nAjKYPF/Jzu6N+1/52gc8MZKC?=
 =?us-ascii?Q?WRdTeLfxf8S+gosOss07Zkz9DunpCAlDTfXPLnmUPxobJEtJhsqSNxfOt5m9?=
 =?us-ascii?Q?gHhjt9o4SI2WQbZW+9a9sfhjbKDRHeMh5bkfbgQcldb8vOByCKqfNe+hAyw4?=
 =?us-ascii?Q?JJsZGGKCzIeSeoSP9wbz5yRtMRrPrnNWz8soTt8qaRlNGzbSl33Or1FrtYIe?=
 =?us-ascii?Q?3d6z1n9rxqf/0qGh4lz1HIBgLei48McGp/5uDLE4VkXKcVmnKkpdXynd0s33?=
 =?us-ascii?Q?ryOEpyfKQkn6m+HD/W5C2KhTWyyP6xNIT06dH8/do5FibFoL+zAl+Mb1Dr+9?=
 =?us-ascii?Q?mrVPAlID7928tnBv0wWZUjrlVzTLLxHwWOpjvw3uz8fAqTe4XfS5JjuYA/yx?=
 =?us-ascii?Q?+r8K3nGP19Ww5uMuhz7FHJaFTKdTXwk2dSy5mcSDAytkAxREoCld2Nnv2+rs?=
 =?us-ascii?Q?bZigSQlm6wUJxGHp3c/TyTk3uGXdkMaDuFZ1G/O9J7x+6dDwWY18K+SRkPFd?=
 =?us-ascii?Q?Rs4xgZfQY1tUzf4OQj6UfN16gQ56G+5GcNa7nd8Nhym0s4g0okTz+duG/gwc?=
 =?us-ascii?Q?IL7ENJ5wdDNyxntP3mw/0DJkvyyvYC+Y8xp4KKdubKscz1Py63gihXivpN9u?=
 =?us-ascii?Q?psw3rQYklV1+VQWx/d6nFy1PE/EPR4jvwdQk1wEwZClf7lkULroLC0pixED1?=
 =?us-ascii?Q?YDXIOb4Ro70m7J4HYCjyucnGBkqdN69ydlIEQ4Rfvf7IPwJq0K+/JBJ2Bnk1?=
 =?us-ascii?Q?p9jFuMc5xlIQUHZMAx7OcaAC69UQwkqOOgsa1BvSl7/cgwnrAhc4YJxT2XCs?=
 =?us-ascii?Q?rtvEkZB2nGQs36P2M+zOU3WmUaFgouj5ZpJxSjsCfxtYf+dzZ7Y5ll1dkZm1?=
 =?us-ascii?Q?SWSLBe3AYaY4E5PrT+Zqc0Q/0UtXIJ5TCInK8Bo9V7D1yB751iLnacYCpNA8?=
 =?us-ascii?Q?1xqVDmowsLBVl1SUTojZ7DR+MuEHjdF99h2m5RmFH7Hzh36E/z+Esl5EPE/f?=
 =?us-ascii?Q?6S6vOZgCPOZywL9MSfyL8IXEmVVgveTF9wxR35wx98zKjV/cGBgtXBfVapGO?=
 =?us-ascii?Q?gP2ogpidjeF8Tb0Y7LNl/Psd4eSrLy/FnaavWvDFY8nbL82ZmC1XYhnWhSmd?=
 =?us-ascii?Q?Tg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5e3f504-6318-4c44-e9e5-08db3684624a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2023 09:50:41.5255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Dnppnnu1CbvQg+Jn9pVXr95XXMftRvHY6oQ+QPKADvjNnHGX+hna4R39pfgSFptymkIeMTbMzlG+WPJdmbrEvpifl//HRWeP4EYHrYsFzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4892
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680774655; x=1712310655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/9+UTSM3aUrdwQD9eDBYFjeb36Zy+EXnttLaV3cU5dc=;
 b=Q+xl+BcoVU1piCBEB8WdlohGryPbZJoXS3joIzgvgz+6f81vknsWWCgL
 KdVHmb6vWAgS8BRMS3plh1w9X+XBxsNSXLs+ZvdI64inx1qMBm5DKXW/R
 NMwJ8TI9hNGkskL4gL8caKWB/utyju06OHJJLTsBIrbhxklnKEpxoZiRY
 BcYMsGiYi49ihfB9CElqkg+5rFtxAHrIlG0/Y0qEJ2YtNh8dHVMZHmQKu
 B3jD7tsvaXJDNBGVzcl2l8L5XM94Oz/HKrfVmOKch4J5BJFjoc1D+qmpy
 GAL/9rM+XVTLZUc+lY3whQAKUXeNZ2/wTQ3GyRYpbNggHwa+h2XDKfp6Y
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q+xl+Bco
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/8] ice: remove redundant
 SRIOV code
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Swiatkowski,
 Michal" <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: niedziela, 26 marca 2023 15:36
> To: Raczynski, Piotr <piotr.raczynski@intel.com>
> Cc: Swiatkowski, Michal <michal.swiatkowski@intel.com>;
> netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org; Saleem,
> Shiraz <shiraz.saleem@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/8] ice: remove
> redundant SRIOV code
> 
> On Thu, Mar 23, 2023 at 01:24:37PM +0100, Piotr Raczynski wrote:
> > Remove redundant code from ice_get_max_valid_res_idx that has no
> effect.
> > ice_pf::irq_tracker is initialized during driver probe, there is no
> > reason to check it again. Also it is not possible for
> > pf::sriov_base_vector to be lower than the tracker length, remove
> WARN_ON that will never happen.
> >
> > Get rid of ice_get_max_valid_res_idx helper function completely since
> > it can never return negative value.
> >
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
