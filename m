Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 571E47E67E4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:26:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA4C1612FB;
	Thu,  9 Nov 2023 10:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA4C1612FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525571;
	bh=3S/8ZtAyRlq10wdmNa3/eouCw5WSFPp9Xx9sUdzr5RI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EknjwpWYA+MQi+nLC0PSerY5y2gm3uHiArW0VqQr1Z0Xnrz+NfzF/hwWhuHmH6y59
	 OelN/2yBPwAcZtUY5pBnAPL6Ni6kyRRvyYBoHa+MYJN8i+Y7vgNqt9K0hqPBCUWfFf
	 WZ5lLYtVZQ5LGJa1rosmuRGSAItG9UZPGBZROo50eZ8qGWWmEHXNenUoHq4XrtI1M0
	 UTvVFPULMkaxelNCrudhY0MGQmeTnWiHMmHljFdYCiNgBKRwXUzpGeBwS13OfgwAsb
	 HTJaqq+Olna05/ClEbI/5aOezv+LrvrNXD/bUtXnRB5Wffqko4xKlJURVXArH8rxxM
	 bEVR3LQ15pzUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbgkG1oYi6DH; Thu,  9 Nov 2023 10:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4E82612E4;
	Thu,  9 Nov 2023 10:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4E82612E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAF701BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 805F140136
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:26:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 805F140136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mqPR2FrXMrAt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:26:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26AF5400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26AF5400EA
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="11509518"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="11509518"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:26:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="11492056"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:26:02 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:26:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:26:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:26:01 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:26:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G56XUc/NwkVm5eGFsWE1I8p0nn7chhCZG4kEI7FYNw3PU1d+dmMA+aRRwLXhopN3TI1oVrXdw+s1IOMHqAwSTxF5J+pMf13NhQ8Q0WR8Hw0IrrTrpC5YT/P8huN9tFvWb8doaSXNID4tNLXnIuS5jDhBRqWIcsKHk6lS431CVB4LDu7oxt0ZZQnYkikREr3kA0hLYopRz7/v8KME82KY95dscB47kDDzmMmhbYP5khIS4HEO9JgdhbIbSEQMFY4qtjcXNf8GHtkNpgD+cEi8qz7Wh6yylQSE+qfmH5j/UHRsrvTG0WYzlKTKJIYTtqb73SjahhLnPsRw0stV5AEhxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vsL+DEOLPw5KA4uKN5KujvJcbwik+zmtakvRAMOaSCg=;
 b=f8+kEL0MeSnQ54h86WxGa5NJE01DnCrQzedVslxiRUzExqw89aB2wPVeDWeOt0baXoHMVZvVAJ5bpP2A1y3svWfLqDfInLlUYamVDjoSHXEkOs0aa9Tj7g/mgZ67dVMlj3yldXlbSfGepNQbOFbpN5QSFxHnrSwn4hQoP7TZzg7OesdyO01ibYbh6s67f9YR4vu+nQHx7+YcG9vRrjb3ut2FPu1giuQkqlxRmu4QccNcTvppxsYCdE1jJU2dL1v4FIDBtXf2aQsbfJIOt4EQRtJqgFI1IEzYG5CrZlJ57XQq0Ui28gIHT20Sbm8VCM7d9ecQqIDi7r3bmlTbjQIYgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:25:59 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:25:58 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 10/15] ice: allow changing
 SWITCHDEV_CTRL VSI queues
Thread-Index: AQHaBm5Q9gi/W33fmEm8hU1W2sjxibBx4UYw
Date: Thu, 9 Nov 2023 10:25:58 +0000
Message-ID: <PH0PR11MB5013AB7553E880BB339AC85796AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-11-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-11-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: c10925a7-0f72-4a9f-7bdf-08dbe10e43f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S89PKCxljRrTFx1Dc/KS3nqBORpyVm9i930KtTVO4UJ6y9bzFTeUubo9phRdqp65NQz53tSAT7Pb54YoOpq4XUjQRD8HixFlAIyTqIK3rEZeW/eMhjKVnH8M1bOV5lwdiZBMpZVR1fS6vQr6QYttmvH7mob75H9+xYjwiyePieFRE0mc12RohWydwGoGrruvQ3Y6eWdFgpalx/7Fm8TCF6A8zP7sdMcgKBijnvKvqZ3iEymETmzNjP69R03cOc4anFetjujtlhXZp58DxAEMk/A3/sOqJUtYmGUyOJCKoNMQ4kCmkPIUxp62gaCYuAOfNwggBB8sFbW8MWyKVJZOaQlcXSuGVWPYBZzONDxNwLVSmD1BiLZqx7/IBy0EPQhUn4U43K++TAiFD3nZ5e3j6SaiRNE6QYP+VrJxsOOSqeJ879li2+lknmO+c0BUj+dGrBt0ZkScskwvknCZOebv8jR1t/vb1K/Y0DdYv9Rm/LR3vqDIF79lg1ICKgM4woKvC2f4xYg+QClxBIvLz4WNBKQFn9Kr/qYAluN2Ox4qpWqdhEIy2/Cp9BYSreEEIf0YJO8hIc42mt93QR/b83pPS/+gue5sdxlNSZ4lc/f3G2VPjXkPgIB9WHBm1llU5bk8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38070700009)(33656002)(55016003)(83380400001)(316002)(64756008)(54906003)(8676002)(110136005)(52536014)(8936002)(66946007)(66446008)(66556008)(26005)(4744005)(5660300002)(4326008)(66476007)(2906002)(478600001)(9686003)(41300700001)(71200400001)(6506007)(7696005)(53546011)(76116006)(122000001)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DlTweLPQze2ApkDq6qrCgherr7wFjQktn4MTE6bfN0vTDtHZVD7rXdvoQdZP?=
 =?us-ascii?Q?OKPzMG3oQxwWbZ7v5gc6C2meJ7LxWl8eQ1NwleIcfqjeMxFNelnjkWD4HAtf?=
 =?us-ascii?Q?VpARF2zb6tWxPccNQiruygW5MZO74EWsBWjl4NEvsSK+nZebyE2crsZlxjzw?=
 =?us-ascii?Q?qk73LNtmJ/+q5lRDk0C5VCX7gekW1mmyetH8rBvE5GiVmwesoKu4Yozfi3sI?=
 =?us-ascii?Q?I3atiAi+PlBgcvRmDFYt5NazOT+9oOexfj4qY//TFFr5gzqpEbG7TSKfdpIM?=
 =?us-ascii?Q?1t2uGmXcAFzaR6z7oU2xa6R6GP68H9RWYWI56ffGTe19hVgZYZHQcOa/Mbdc?=
 =?us-ascii?Q?3D94OzotniE6kuTcqAHUXW8iCA1OjUK62QP9g/nH0Ji6B1iwBi2mozK9yj0A?=
 =?us-ascii?Q?pNDiKp/2nXqF+UVaAGEFf35vLeNZLSzSUh8hztsI9HNdUE4A54nG3GjN+zIK?=
 =?us-ascii?Q?SfcgGfntuXn8NvY0O4QWQYHPovcOaL0JlxvPJl/y29XetN+hK/Pz/IShdO7H?=
 =?us-ascii?Q?gcTRvozKuYrntju0wZV+phZ6ezxAJKjDhaIz96+CtpLVav9ptXJIrYBnGwkw?=
 =?us-ascii?Q?AIGZXS2YHWvwPSkQsulBKCwPGPf3Tbp8plT38oY42afsxAzTIH5OlwG3JX2t?=
 =?us-ascii?Q?NhPzUgypRj+Op/3LO/r/w5xPRDYZ8MKPBRt44xz4xD3g+2lEt8bGdJDnfu7h?=
 =?us-ascii?Q?TtmzXAPQ67OGO7vPlZsTnAYd5HYcYO8o5j1LNvN6AclkcB1pFcK/RJT4w22X?=
 =?us-ascii?Q?OFARi9P8kAzDLTZci8YVeqKuNafTDfsbg/1mc4wmSvcHjHB7quL/1M/Mk327?=
 =?us-ascii?Q?EsC7396Ev9snG94zA6vTHFuHkyZPOGkcvYh2S26N133y3nYG+i04ngHhh9Pd?=
 =?us-ascii?Q?VyhwBVWk2rCE9kVtJk3I2tpstrn2YMQ7LqPOdfkRhyN6+KQT+iad/rfKM+Xq?=
 =?us-ascii?Q?eT6Aen6vE3Ye/1Z5Jgl5hnxiHyMMdG3O55AF2jMjcClUqmHazoiEvuyllVB/?=
 =?us-ascii?Q?iWV+ovjdGfJcpLt66AtCeHAFNPH5kBvsdbz+qiG4rMT+NqlRAKRweDsK4tzn?=
 =?us-ascii?Q?6inDfmzzbqVJ1wjuzWbf43VcgoFk1toXeiMYtJIoSwb8FsZ+E/iwk/1/FIyp?=
 =?us-ascii?Q?zzPWqu257UWU4EftXhuJE1zODVAVzT6+svFd3Y6g4jPJuD3NLjvrKzZ37Os7?=
 =?us-ascii?Q?9zlsDJRJOvnqzZ4nQ7V7MySz9Iq4dTEs4RSD5ifHVsvhjLJ3WCW4S2VW2X92?=
 =?us-ascii?Q?Rnpzz0c7SOEsKjpCF6w06nDWbdY9yuosiFRCY6EJfbDjoEnNKw+hQXGr8HSR?=
 =?us-ascii?Q?bjb+C61Gn/6fFgbh2c/NgI4Wc+aKEUO0cdypNaeJ3gSbG6eWraGI/G8kDcLh?=
 =?us-ascii?Q?73yFo5Gp1pcKoXUQZJ3U2MnOP4c71jII1lWZLkkTpLF2MmekpTKhkvcQ1FLx?=
 =?us-ascii?Q?bjbpw89x+bqoXB7WSrDJ2Egb9xefSKaZVLqhWlwQqUJXgIxYC98efHhILNeg?=
 =?us-ascii?Q?2QWumCzp2wh5kaXqtrJi3ulCzkIUpNzcbmHpSKK8aXrxjUtvujdFEmHp+9KD?=
 =?us-ascii?Q?KMqSMHuDrmcvFc2GiUvVM5YlP5t6Nqs5osyc9/uboq+2suHf6JeZd9w5JbuT?=
 =?us-ascii?Q?Ww=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c10925a7-0f72-4a9f-7bdf-08dbe10e43f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:25:58.9099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OL4e4Jrle+dfeRY86JC3GzC5hlkwLAs2Hgwdbarn42ynXiIYQkvAIE1bBFIiGEfAnTx08/ldNQTTvnVX0bbvVm9/Phaxmu0b2DsO2VCkT/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525563; x=1731061563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eUAxa+AwtDZkWNWzQk+GZwAxIm1PuLKTOSeLX8NCVLM=;
 b=R4k2X6letEW+0ISr8/7v3NXSv8dx3CUTDLqD6IUtfPJ8XPmLoclmSDLY
 kzv8Qut1Qt86bWhHG3JlVAye0MRVD6JbKAB6/mv9NAILwLtADRlKSo5L9
 2SEvvpTAsIg+t09GLIDKAi/r1o/4k66w+hUlvsLq4OtTIsLt40rYr7rPS
 oDrcTexthuXln4PztbxGXEL6NpMw3xLxdYCoOokpAvJQ7M8XpsmkSDW7O
 MCQqJcqZQiDXSPtYODAaLFJLi7bwzDQ77wLeCQwYPPR0xka+2dgugstN6
 JUwYWfqHrRnVv/B+w/wm6D0WlTt0LlZJdEbJjOMK3dwpXWRkhsmAQOBXz
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R4k2X6le
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 10/15] ice: allow changing
 SWITCHDEV_CTRL VSI queues
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 10/15] ice: allow changing
> SWITCHDEV_CTRL VSI queues
> 
> Implement mechanism to change number of queues for SWITCHDEV_CTRL
> VSI type.
> 
> Value from ::req_txq/rxq will be written to ::alloc_txq/rxq after calling
> ice_vsi_rebuild().
> 
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
