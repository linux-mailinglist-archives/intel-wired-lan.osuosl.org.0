Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F1372B1A0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Jun 2023 13:17:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07F0060F93;
	Sun, 11 Jun 2023 11:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07F0060F93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686482277;
	bh=tuGAeesmOPyO99VkCWnEKeBSzJFYXVJ8vDskFF0fbLE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HZmKvOJ3Is/0m6nacCXGp0xwiGV3ahiAw3dtDQv8VtLS3QHQx8V/tr1rLtIswTbYH
	 7/suG/mUxJkdYIcOUC3KQuNYdfzd2ofmvrGsTCvLfJzP8e8cxutUoZqSJHD0MN/Dm3
	 hrsWilO/UMPYGWJtZWoQFXeo/kz5Rz7CF1OQW6OJszxakL6QFFre3gpdliNE600uaD
	 ouxmM9Q/p/ohbS0Jb12wH7yMJ+EWtm+UAvoFG0TsSk+dHGmXMYuQ76qvlb0cTP/hn/
	 BpDcr56lh3WiuUE/HiXt7sbYBrLfeDktCz6rgbC4LE2baZEbLVB4FPfT6yvV7Su9Rw
	 h4uSKZi6iKMwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vbw4vk8xhZ1; Sun, 11 Jun 2023 11:17:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C754B60AB0;
	Sun, 11 Jun 2023 11:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C754B60AB0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8546D1BF5DC
 for <intel-wired-lan@osuosl.org>; Sun, 11 Jun 2023 11:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5749660AB0
 for <intel-wired-lan@osuosl.org>; Sun, 11 Jun 2023 11:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5749660AB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9XOsEL6gGKL for <intel-wired-lan@osuosl.org>;
 Sun, 11 Jun 2023 11:17:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2447360AA8
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2447360AA8
 for <intel-wired-lan@osuosl.org>; Sun, 11 Jun 2023 11:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10737"; a="361214116"
X-IronPort-AV: E=Sophos;i="6.00,234,1681196400"; d="scan'208";a="361214116"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2023 04:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10737"; a="661258475"
X-IronPort-AV: E=Sophos;i="6.00,234,1681196400"; d="scan'208";a="661258475"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 11 Jun 2023 04:17:41 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 11 Jun 2023 04:17:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 11 Jun 2023 04:17:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 11 Jun 2023 04:17:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZyRGsMxVUZ6mJpUaOxcsm1/JtDK5Hhx9MGhX8x8vCfWC3ANqTC9hHYOZY4z+DrcETLV9eD4hlLhWu6PDvuVlXraFESLWGVnG0wqt3S4aCB0/mJ8AXhSFMqCfCRhRDPzLE3meIWb6B4N5Lw8AKPbWAV2MT6sopQmXth3cqU4/Z/uDj+OaWSN8LSx43fjI/2frnfiPJzxeZWeVBRYO321DxMJrRmdc1Z7ao4fnEDEaBz9+oFPq5MprsX4iW7tSW/P66rqtqDK8NMbCw+MqN+5L4uOonJnrg+rKB5sqkbR5fIEe/9olpRVSPJc66zzHHLUoH1OLVsvbpPtoTJGUQmxSqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qWnASx9ozD8l7ZeJysa5umMTLvsnR2HDnH+t3d1owds=;
 b=WhgAWU+2D6tq/uio6Pz8aLMFpY0nnzPwa1lYr/L9zwhUPtHuLeMAs4roXwcnlZj/pEkBakgICwgak9SuTzvbCrlikhAK76w0Yw3yoEeh+NPIM2s1AAz828h0lrlR7qSfvxOA1BEtvXI4gZ2uY42Hszyv7KnayVrBlHHE+a75eFb1gmPhkMg9OkxXkpbnzyh3jDrcRXQSEbJz9Mb+8Xe3TtfPoYIZ7nyqcXSwfNsc55Rg2467hfeQq8RKL+oilAxQeKFKR32VNq5T7cOwqrDY6BuWqdVF8A8BaTIyvSskQ2TfIrfWvKt9fTp+6Ca0D+RIvIjQdAvYFwaJIBkMj5etlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH8PR11MB6659.namprd11.prod.outlook.com (2603:10b6:510:1c2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Sun, 11 Jun
 2023 11:17:37 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6455.030; Sun, 11 Jun 2023
 11:17:36 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Tan, Tee Min" <tee.min.tan@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igc: Include the length/type field and VLAN
 tag in queueMaxSDU
Thread-Index: AQHZmoKTJl61q12xGkuFiDUg39pXNK+Fd10A
Date: Sun, 11 Jun 2023 11:17:36 +0000
Message-ID: <SJ1PR11MB6180C0D69F971AAC57B270E7B857A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <1686281322-26581-1-git-send-email-tee.min.tan@intel.com>
In-Reply-To: <1686281322-26581-1-git-send-email-tee.min.tan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH8PR11MB6659:EE_
x-ms-office365-filtering-correlation-id: 3b0a45aa-e4d7-44c7-8098-08db6a6d75d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MOdP0DhSgZAbwu4vMv6X3UoC1g0K/Mu50MzSzktk4P7VJiLDi32kMOb2bm3Ud0PKag8u/20BBztGbGsJAxsDPA32Lpdhq9iIbO22nohVHsGSpsfbU7G5R7OXM48sfd2aZ4G+0ZZRoq3u+x7HtUg4kCyD3Ku6RoyHqLlFSGXrKhzEj6Mr1LR9mtbTtm/V6fzE7/j6tCpzUZ86/sxDLC9wv08cCvw0EYsHxaOPMF0i18QZfK6C4zaqo//cTFBjA5v9vSNZWCDQP8pPeEtF25ZHjGvebP81+PGTODxa+aWPJQBhb0REeZAx9HpM3Bd3t09SElcfHdXphjwjAEdgMFQP3FN2azDigqYX13ZlojJozL1tputEKYk4Y0N4+rm2wvPfoaAeXPQCGfqLxJCNa3xFu1IzxsuXuTddwtyMaOVredLS7l1DQEBHM3oXibAM3cQ4gYesrFVw4cFJ6yyOEr/u3VY+v4bdCgpjL6jRqjMUxOxQNqp0a6ZwljrVuyRjAQuZIT0R19buE5bo2evLbIQZxfgtK+v0yx0y6Lq83A93XQEwRkylKcjM0I+rKTXumPTN5sW352CbG1pnSB8RN8NtkojKRIw1YLqtof3+LVtJ53i6xq6E1Nd94MkvsVUQNofm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(136003)(39860400002)(376002)(451199021)(38070700005)(26005)(55016003)(186003)(41300700001)(6506007)(9686003)(52536014)(5660300002)(33656002)(66946007)(76116006)(64756008)(4326008)(66446008)(8936002)(83380400001)(66476007)(7696005)(66556008)(71200400001)(478600001)(8676002)(110136005)(54906003)(2906002)(86362001)(122000001)(316002)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eSRRGE6uBceXSxCYYvtAta1eCWBh4/vObvFyDCtuOQnjBIYfvNffWZtaa7wD?=
 =?us-ascii?Q?5TbM7Xdye4x1jMhwimPmJ6u1QbemjtudaRZ3RDtks4r24FYKfdbRs1y863ML?=
 =?us-ascii?Q?tYkjevKH+Q9YRbnOpEIIzxQEErgDfv2lQ2qGHEBqjT3LbJWFHk9rCLEnaV5B?=
 =?us-ascii?Q?JADW5U7+HXVS46KPYs2wDw3nNiQsb+xFWYZ4Sq1TOgVfTNTuvzzeK/MjW1P8?=
 =?us-ascii?Q?yy1FhMaI7pPzMkibimUvse0ao/4on1q1TbDd56IMsprdaShK1KYEf+urpJOx?=
 =?us-ascii?Q?ElsFXyuwIYY0ayOp1mLquxJwqHhRYhNSIouPQROuLfCHX/M89PxI0mQmQ35F?=
 =?us-ascii?Q?kcUHRrrizIysAd98B6Ffn2jZbJlp0dfCJNkV3ngKW8xuRKRoW+Ox9wAToGnw?=
 =?us-ascii?Q?5UNeqjb9D8yw7HVobAkqCdxgdPRLOsBCPhGgoecXa2Q5ilwTNFc8JItbg2ID?=
 =?us-ascii?Q?AXtA46pJUe0wlaPwANyEQW223lpKCo4wZOP5g3puoAedh6awmKFmQc0GZHX5?=
 =?us-ascii?Q?qpyqFLhjb9FI80s851j62bNBydMG2RPkCm1GaL8R+JyC/1Yu4GA0iPlfcOVe?=
 =?us-ascii?Q?56BvMChdclfHQR0vSgRPYjh9hvfDvOtI9AUnL7xzV3+ags94ErumUWCYB5Jy?=
 =?us-ascii?Q?1Fnl+tpd1yKAeC2kyRdN3tjpXzgCBoKxcUFmeCuPmPgg2Fvkj1qQwyBA7grg?=
 =?us-ascii?Q?NEylP5X58gw2Gv+znX5e3syHHD5qgTRdZzm8CvOFi+eogllvG2IUBkDt3mfy?=
 =?us-ascii?Q?0yUOLH4RTQ6Yi2SvvMkIJyjuMHC+aCxo+j9ZUtELN2yHlDi7HWutyCP9f1LM?=
 =?us-ascii?Q?I172lUDOvSyNkey9idXYPxvvfUVlaFGNLIvLDhUHwqLeqwPT1mlRbRBtJ+39?=
 =?us-ascii?Q?7bh/ZVrEL7W94GzmyknSojTLsQz44TlK94DGZIcDsqaBhZ4SDvcFdrDpAP52?=
 =?us-ascii?Q?+aiHqPLq9u/qHBWEIE4PCLreR3R4T0GEoSTwY3vSs1tZfIm3nwzihKlR1PkZ?=
 =?us-ascii?Q?i8SeDki1qs7Lkpu7uDVYHn9Zf43Ktc4pogxGaPjQX0mj1cpQi7BdCGMiAhlj?=
 =?us-ascii?Q?STuxSNCR2POIaIjRdg4c/IoMEAUvtHh6J70tPwwKChoNvnSJp9i1L1E+Mlh9?=
 =?us-ascii?Q?O9DlWOl/ihFfmG7rJDsVW8SWmrMgVmczGRRNeCyOSuNGiIDOboblC2efhs4x?=
 =?us-ascii?Q?qjoQ6SACN2yDzmGNMubSgE53oIowbTaQMWOa4SlVi6qQiqOqJfW0c19MWVcL?=
 =?us-ascii?Q?fcGWPvcUQWEK1gEBNzpgslFp2SoAEgNIhNSQp5olx8BcWU+W+YhXhC/xscR8?=
 =?us-ascii?Q?iIvtaHOHDFFBQy/uURWA3ttZngukxHpQNKndJFahlR892EryvfdZXfrQXxAb?=
 =?us-ascii?Q?jXpzfV6KmBOjcIlFKiL9At2aOpnN1wmXl7rD8kr+TvOOvR/88ImGYir9rOKR?=
 =?us-ascii?Q?vYZJ/jNIhZxdvG6q8PENYPT5PcDn5L87GD+2KuQ8BPx6rTzI5mZevPR0n1zx?=
 =?us-ascii?Q?E51ehScfp4/SVNfYzDWT6By8jCYpr6xtGrtFjkWVEoC5BS9hk4iE4yZtcscu?=
 =?us-ascii?Q?tszZ3ALG3z83W9y4dpIJIH+u/EPPvsDP065Z2evuSnZzeGv2LbIgmFcYjlak?=
 =?us-ascii?Q?SHSJ08ujC7AxBVpJdWOc5pA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b0a45aa-e4d7-44c7-8098-08db6a6d75d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2023 11:17:36.3928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rVmf/mDBfBU8NXLSYMVXdQqvOUuImmBHSjBQFrpR26iI0QCd6lTkf19iDwAbciSfgtnUmzpnmqaj63XoYh5S0l9Dk0TnHmHugbkIEC6VYQfZky06tRwfp309liMXQO/I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6659
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686482270; x=1718018270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Skab1YGp1cMJTXihpiKpfcjzzenjF+oUGXue6gAkr3M=;
 b=E5qSroMsoUsH2SPjNHKKFXZBRY+2H+B08V7Ayvg7ECaO7zI14y6KZLNO
 0LPraLqjOnonnz3IIJVtwlZEncC8hS682dOnMDxnxRuQSNKlMSEp36IkQ
 FVINL5joANHB+TcIXJBfwcy6DgQ1KlIvLZbHEDq4Thr40u+qS8N4UjX+A
 9rvM9O/gMqsDfruEEOCVx47vrS6ls3nCOlwku9hmjrmPOLgfI//rQ+ffQ
 g/kyl9VSamQJl76ABC0Uce48NHYWIaQjNp4USkfgoCvA5ZaYcgMN0fNIt
 6wIDwjp6qqbAMnKf/Pmqs6FYvcyyyO0l0qdxul2LIDWdno03HgOvm6TPj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E5qSroMs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Include the
 length/type field and VLAN tag in queueMaxSDU
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: [PATCH iwl-net v1] igc: Include the length/type field and VLAN tag in
> queueMaxSDU
> 
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> IEEE 802.1Q does not have clear definitions of what constitutes an SDU
> (Service Data Unit), but IEEE Std 802.3 clause 3.1.2 does define the MAC
> service primitives and clause 3.2.7 does define the MAC Client Data for Q-
> tagged frames.
> 
> It shows that the mac_service_data_unit (MSDU) does NOT contain the
> preamble, destination and source address, or FCS. The MSDU does contain the
> length/type field, MAC client data, VLAN tag and any padding data (prior to the
> FCS).
> 
> Thus, the maximum 802.3 frame size that is allowed to be transmitted should
> be QueueMaxSDU (MSDU) + 16 (6 byte SA + 6 byte DA + 4 byte FCS).
> 
> Fixes: 92a0dcb8427d ("igc: offload queue max SDU from tc-taprio")
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index bbb431d..4349718 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1575,16 +1575,9 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
>  	if (adapter->qbv_transition || tx_ring->oper_gate_closed)
>  		goto out_drop;
> 
> -	if (tx_ring->max_sdu > 0) {
> -		u32 max_sdu = 0;
> -
> -		max_sdu = tx_ring->max_sdu +
> -			  (skb_vlan_tagged(first->skb) ? VLAN_HLEN : 0);
> -
> -		if (first->bytecount > max_sdu) {
> -			adapter->stats.txdrop++;
> -			goto out_drop;
> -		}
> +	if (tx_ring->max_sdu > 0 && first->bytecount > tx_ring->max_sdu) {
> +		adapter->stats.txdrop++;
> +		goto out_drop;
>  	}
> 
>  	if (unlikely(test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags)
> && @@ -6178,7 +6171,8 @@ static int igc_save_qbv_schedule(struct
> igc_adapter *adapter,
>  		struct net_device *dev = adapter->netdev;
> 
>  		if (qopt->max_sdu[i])
> -			ring->max_sdu = qopt->max_sdu[i] + dev-
> >hard_header_len;
> +			ring->max_sdu = qopt->max_sdu[i] + dev-
> >hard_header_len
> +					- ETH_TLEN;
>  		else
>  			ring->max_sdu = 0;
>  	}
> --
> 1.9.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
