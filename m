Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0699234BCE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 788E184EED;
	Fri, 31 Jul 2020 19:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZQgDkUAc97I; Fri, 31 Jul 2020 19:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B4A5886BF;
	Fri, 31 Jul 2020 19:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3121D1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21448805E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aP6wbjpx1Mjx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 250E6886BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:04 +0000 (UTC)
IronPort-SDR: /sUf4HYAddXzetrLrW7wYg8zrGw4KB7rp5EZ6EPGzvQXlL2H3RhONsW9yz6OAlUwOPoPNAS7OH
 brXnQHIUDQgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131926428"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="131926428"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:57:03 -0700
IronPort-SDR: cPRXkLa89M3tcsbnx0ps40E570gsCsGnO/GK1n7bvWIgGfVdhm52j26s10vaF7szJLsarCvf3r
 F4TSA/m7UhZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="291311088"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 31 Jul 2020 12:57:03 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:57:02 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:57:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:57:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrdAyhaEM6x/TcmtxUNBVq47yWWa7vedB3Kk/rCLDoq5CkMtMfc3dzY/AVjQAkpqj2kHQRl6T+k8MSqPBKQc8zCGZ1OgNZegNEJ63+AN/mO2KSIOszk9YKoxw/M/PHpCTcpiaheEVNbq8NpgWt6/hcwNkcTXBxxeBNLwgBo17rm+xEoMRAPbwNGoJGICMh6DxL9TXUEtU4jn1Wwe7Mx0W1Xs+YTbjW3lPHRqJDeEA8R5fJoo6whPPuHR5SVLfGiBErNUEsIHFM0nwf8VBknEuQlvA7lXBwzjj39rf+1gxR++0sinNacWsTslvzaxxGqJsIAf7k/P9Ayhx9R8xcPM4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yZ8ydX9QrfPLy8jrS2zkWSJrEOcHiv5/1hfqDnHun78=;
 b=V9dW7iiaPhjyp0hLf4w8EJZ0bDMBepUuVGRTTOa/4ACEb6xZg3edp4CmDZ3aP2Y66deucRuDeL6uqHPW2liztB2wBA4ZvuLClmX2JMYHaXNOfxlfXZ4K58Oj+dImxeKMX1UDtKG2tfRxTHRFS9UqrgbHdPXkAwvEnSlEY1BRjAR+jizlc2wgaj5wzRYpRGkqCZ7jjjdBIZPPCAvpHJ5diyo3fgfhS9ZNx2hfnRKlxb3/Hy4Zs9hr8c4QGoVQwcT8uy5cpVhmejtNsNsuCZIQzUJJSvpWMGVjlcQQ5hyytlWmlnVgg6yNKOro0+UfiHvbLjdOacRaAfx4ojeT+YRUog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yZ8ydX9QrfPLy8jrS2zkWSJrEOcHiv5/1hfqDnHun78=;
 b=o8xJEwWOc+im9v5aUkEnerdYxVj3nFE5knQL/oG/LTs8b6pX9mPqYcSDNLOB685Pbrp/eCz7fHj5hilCeOP024Z3LhknLzSDJOBKAKMpS9BQKXBLlc6SpmCZTsjh3xnU4ZMQOUfYZFeXlsqfTrHQRxfRhBctXJ1J1tO0wIx7ssc=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:57:01 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:57:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 12/13] ice: adjust profile id map
 locks
Thread-Index: AQHWZgfGmvzQfZN7pkeUWNm0sWxlvKkiHVdg
Date: Fri, 31 Jul 2020 19:57:01 +0000
Message-ID: <BN6PR1101MB214537464B83A777907241758C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d704ce3e-0839-45e9-e939-08d8358be405
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB1329E0D7B7097C513FEC9BD18C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eAmcVvCXjaWzIBINbobBW5NfLPZa5vcY7bQXCUg5FdSsYvgl+wIJpUrMblwTsTBMVOUrEallrpM63iSabICFR+c08BtLA5ELLFfli4ZGc91OwRDwgujy8a63pCzRiPmnKMB4TOpDGjtTn5WnrI5OLYxCsqNnNhtdtvow0VsiEM5BPf66iXX1brYEYuC/Eg0GBK8F9AOc4q93+wqUc4jlP1wPzJ/SMQEK31WQ6CcSm9CaczwtHvg1DlZ+YP1shitW162OM2PG0ndwh2giGmRdvHBhzGWwaACT2KvngbID1lH06DoMUXPjPu881kNpa7ACBXRdd4ghfN8E2PuRxsV+cA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QYaLhDZysE0oYeiYdxICtYL3kS2rTW8OZXRI9+I6DiWP5WnKxNBaCRRL8HkCh4svwtRO9i6MTY5l4sVcnzuvfYcy2+JIesW3aZhfJQiX/s0NsvZDUbbGriDGIlVptq1CPWsGa3rX3LMXVaPFC59PeXm2iTFQP/cBdD0Ffh7YszXPNhiZk5WVoZEpCo0wYH3c7Z11TX9bi1HgBxllRQNM/ohXMQuU562BHN0k1HkvP5EOhCCXv1JrIZDRHjogeAY7R8rXyu3R//Tipgi8KAQwi0y8HqlebcCgb9lOqiDZdG2qtZZK9LaiPCiKUUKkRzVHPdUTSg81+fOxOI7xtayBno/zS2YIxDbPmpefwFBM3YCLNA+DclET846YuFp9vD+QjroJkp2tu/OKGDYqPJKpS3VLPVccC5D7sicnXw1KYp1je0+Sjq2I13Zs7LaifVm6N2gI0Rm4/J9+jfO9Cy5zm17J1+0JxRJREBiWB0EoypM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d704ce3e-0839-45e9-e939-08d8358be405
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:57:01.3244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ycvb89xw+vqV2YEbWgcln1M54u3DGsUgAw+jRerdssUOtW2I0v+v8azMZp6tcXTI9cebLqUSdBOcmtzIEpgc6Jn7J/kB82nBJ0KJusD/lg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 12/13] ice: adjust profile id map
 locks
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 12/13] ice: adjust profile id map locks
> 
> From: Victor Raj <victor.raj@intel.com>
> 
> The profile id map lock should be held till the caller completes all references
> of that profile entries.
> 
> The current code releases the lock right after the match search.
> This caused a driver issue when the profile map entries were referenced
> after it was freed in other thread after the lock was released earlier.
> 
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 90 +++++++++----------
>  1 file changed, 45 insertions(+), 45 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
