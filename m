Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E06046FE09C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 16:41:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AAF86FE82;
	Wed, 10 May 2023 14:41:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AAF86FE82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683729704;
	bh=ojRDlKlwWLfLUtj83dPNHlhj+aFxWBWWlQturm81piI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iI+F0AgUxSue8+Cv6xR1REyKSdebxlIlpXalR1oLCN9/FEExxkJLmUocMMFfDytfu
	 U4ch5t0PzTEuJ3y8BW2RMIH0KfzMgf/d7hTOjpjxz0vbMZsNSvXnPwhe053/wiKONG
	 Es2348fWA/CM3ONpdleHOUSOrfdUJrW2qqtGg+ONnheGDbvkWKmkItWeQWUORkAt8a
	 gwGLEp+0XlUQpwgBTqZJQyyvC+4EA7uUVNE7PYRdtXOD9Ho5/uz8lywkONSch/fIfU
	 axdL/wSjo7Hy3mRG8dEVhOWIORZH1YnHx6X/pUKbRWecYS52eJsARYIe0QcFpz4U8u
	 IEnUULnMEVlxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0fzdh53XAUS; Wed, 10 May 2023 14:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6F97616F4;
	Wed, 10 May 2023 14:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6F97616F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4ABB91BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 13:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F3F5616C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 13:57:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F3F5616C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RY8hpmnEB8dM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 13:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21746616B6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21746616B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 13:57:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334685869"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="334685869"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 06:57:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="811148478"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="811148478"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 10 May 2023 06:57:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 06:57:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 06:57:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 10 May 2023 06:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVFORxuig0W5WRJJuy/WSafzuPiS4gMx3PKbonQFLQPpMvd0TV9F17d8VPWXU350on6/MZrGDl8d48dccE2wd+7FvtjA+umjc9oHKmZwPVRd10PIKL0St5qTn0lvOqdQkxsiR/5QGzOOYbfca8yEwXAnXJPeTzfE/VOiHuoIgFfOLvclyjKTiBfUfAIsj4sbabZDxyTMCryovNLAMb1rsv/lcDBxmRoSBOkEBBWOy5gNmOXPpz+gyLor8sBOtSaUUyOuPlRQ10A+A0PQ3osyFP1WyGaIAXBKsrzoIw9g38aSNC6kUYCjXtfI/Iydbr8SQeoEJJT0TBqhnvMtuRMP2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7PEX5wDYGntunv0NTHkBhiKQXJ9DRZqSgW/i5d/dXUs=;
 b=BZ3kbuX47udEx2NGUiLbjZrdygevgWLKEeEFTbrke4b1Cv/rnJvNchHYZ2DCDeDBS5nPj8BFN3badIw2mgVn2GV6hPu9EwtCJqjNKxHuX8Zn0GdyXwZEW0A3SUqCkOMnmKeYYAM6l/5tN4CKrKZ98NPX4zmVLTBNT7wBdcRFHFz3WPl4qscOqFk4tcj52F7b25QUcU9X2suu+0PSPe9i4BLzDSyz40DPGF9tAmyt9FHdXsDJZjacXYVgBgEQKMMQGvHypfTd1hXU0TAiLzJUlFeZOKAkX8IPfyaWiiAeUiC6Jg/As9CW1qUY4p5GuQcTy8FAto7TV3RsHz0yfSGE4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4997.namprd11.prod.outlook.com (2603:10b6:510:31::20)
 by PH7PR11MB7145.namprd11.prod.outlook.com (2603:10b6:510:1ec::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18; Wed, 10 May
 2023 13:57:53 +0000
Received: from PH0PR11MB4997.namprd11.prod.outlook.com
 ([fe80::c59d:2f64:b0cb:e0ce]) by PH0PR11MB4997.namprd11.prod.outlook.com
 ([fe80::c59d:2f64:b0cb:e0ce%6]) with mapi id 15.20.6363.033; Wed, 10 May 2023
 13:57:53 +0000
Message-ID: <af20daec-5ca8-6506-5146-7ccd7fb255bf@intel.com>
Date: Wed, 10 May 2023 16:57:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.1
To: Michal Schmidt <mschmidt@redhat.com>
References: <20230509113943.27194-1-yochai.hagvi@intel.com>
 <CADEbmW2QCdFUbZGEH-c058Br2dRwJXT=JHjAc72=M-Qps1SJgg@mail.gmail.com>
Content-Language: en-US
From: "Hagvi, Yochai" <yochai.hagvi@intel.com>
In-Reply-To: <CADEbmW2QCdFUbZGEH-c058Br2dRwJXT=JHjAc72=M-Qps1SJgg@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0234.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::18) To PH0PR11MB4997.namprd11.prod.outlook.com
 (2603:10b6:510:31::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4997:EE_|PH7PR11MB7145:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f585c69-24a5-4833-c85b-08db515e8c83
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dWbJRXuirtlDLPY6CTqEbdkYP7/7ccmh2x3IWIiR7RV+hQx9Aoll4mCn8C53JRxzo2imRdAP/SDjL/UpE/QGN1gaXQroRgGhjQhJIz6euqtZw0V+Vh0qSUmyxPTpCs+5IonPwj3wVcdJ/gpN0dsSqid5xqZX2zXNTbApc8+XMba66t/RW+iZLWGtrOuxpOMTIvOY2WjFjZJ3OxbeQ6/y35BsmQvSZIChdaELNBkqw12JX3D7TJSqReM4m6U/0Ej5dcWo3kojdqMv3h7UkYfMWsFsjAcOvnfL2Fkf7+Flv5aXQXjfS0m8fDI1uPXzGY93w86wXBpoUwZoA1kVO2Axl/aiU9SWq7rFplWzIxK+mXBZmyt1vWWxFUo8PkVjKTxrFqNGki4C4WEYB9zykrjcTfwcLwHdBORa4QTg0aw2/E6Xh5DwJsl4zWBTbd/fGcrsHR/c1jTMfEyfN4vPK09/sTItpK3WNfMoFBpEDmkRXnBjiGY6dknqkH1D7Cg8U4dY/fWb5+zMpCKnrW0fxkd+s+EafE1rA5AfBSDdNIEuD7rMkv0pOy6EJhxkNRDjKC2RXIFInOnDaQm8tQXk2lP70+sWRzq7wL2N59pTxdUiGkVQTxJoo0VAYtgDsfKT8dbvADJZ3LPzPOQiNNeB2Ow5uQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4997.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(376002)(346002)(39860400002)(451199021)(6666004)(2616005)(4744005)(2906002)(186003)(36756003)(478600001)(6486002)(6506007)(41300700001)(6512007)(38100700002)(26005)(82960400001)(53546011)(316002)(107886003)(31686004)(4326008)(66476007)(66946007)(66556008)(31696002)(86362001)(5660300002)(8676002)(6916009)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVpEQ0RYSk9pMThPdFQxYlJJanA5bm9Xa1ZKdnl2ZEhUaGtxbUJmMW9qSk9I?=
 =?utf-8?B?bkRiZWxNV0krRGNRL0QrTURUbnNMUkZvQVNBOGdvVjJKOHkvWHVyejMxZyti?=
 =?utf-8?B?VTVYclVyS2dmdHFNZG5mMm5lNHlMa0VGTVo5QlR1RERrVG54ZzhSejRndTY5?=
 =?utf-8?B?emhxaEJIS0xEWmxGOXZ5L2h3dkVpRFhOTVVmVDdsTzlJS1hjRlB0eUFtaTV5?=
 =?utf-8?B?U0ZBVXkwZjJXM1hld0N6QlphV01sNlgzVHdVNEJ4TGQwMmhqTDNrazRTa2cz?=
 =?utf-8?B?REV4Y09UOTFmTE9WWUkyNnhrbGxsako2eTFuYUtDNUYvZ3ZLSnViTFg3OXp2?=
 =?utf-8?B?WWg1d2p0TGRoWjd4RGpCQTNueXErWWYvd25KZVh1TzhQdzJoQzA4bGdZbmFw?=
 =?utf-8?B?d2JYSjhBaUFYQ01mYjRKdnZjVGNzZkFIYStKN0R4NXZLRHlQZVhYTlpTeko1?=
 =?utf-8?B?UU9GcUw0amdycHprczB0RUwraFVCelEyQ1RnQmJGcElVVXFTUWtnNzNaQlpQ?=
 =?utf-8?B?VWJlRDNhdUZqcTRCczhnVHg4eTBKQk9RTWd3ekE3dTBmSlVreTFjOExncUpY?=
 =?utf-8?B?RTAxd05SczIvVDFyaUl6aWlhMjM1cnEvVDBjZjd5UEpQNllEazRQdGdwOHA3?=
 =?utf-8?B?Q0xSZVlFTFc2ZnlGbjB4L3U0WnpaSmVzTFZ3blVGSm0xanFuQVFEVElua2RH?=
 =?utf-8?B?WllhTk0vd29VQk0xUnYxQnpwSW15OThsVlh4TTkyNndPcVIrekVSbFp0VzFU?=
 =?utf-8?B?aS8vSnpud0QxVWd4SkVUYXl0VlRINVZibGQwQ1BucjQ4RmtDTEFuWHpUbUM3?=
 =?utf-8?B?c3I0MHZ5QmsrY0J6Zm5RNzFsRzRqNVNSYlM5Sk1sVU5LU3Z4eFl4WHk0SU90?=
 =?utf-8?B?VTJnUkpTSWNjV29YWXUzZm5FRmJySjhNcWlwTHVBZ0EvWkhxVHdQUG0yUkpx?=
 =?utf-8?B?eThhRXRadENPcW83czRpSUJRMlBWeE5hNDhPZmRzWnc2SVY1c2lyTDVKRWVx?=
 =?utf-8?B?TjhBeUdQd2E1ZXpZcmd1S3dyaWxxMy84YSthZTBZS3daTWdGdWpTcnJUNlhU?=
 =?utf-8?B?Ui9adnF6eGlWRldlL0VCL1A1RjkzM0JWajNsemdOTERKNGNMRDlxL1A3VXZX?=
 =?utf-8?B?U3FTOWdzQlppQjh4WW16ZnhWYm1GK3VpSEROT3pRNzJmaXVPN1EzWjhTL3k5?=
 =?utf-8?B?Ni9IS1llaWM5KzYycjNqUDN6VG14STcvM0p2dVFjWUtjNDRIS2xHMkh1V3NX?=
 =?utf-8?B?TXk4Nlg3ZnpnaFIyQTRhWUVXYUUrL1MrZDdjUFlvVkhpam9LTmNOb2F3TjNi?=
 =?utf-8?B?N2ZQcHFqUUdsdnFoWURjYS9GZ3lrRTkrZzFtN0dWM2ZScmVYL2NVaHpoVEJZ?=
 =?utf-8?B?UHo4WnE0K1dJQmhZSG0zZVRmQlF5TzJQQmRXWktGRHNNd1dQZEc5dS8xN3JM?=
 =?utf-8?B?K1QwQU0wUFlnSjR1OU4rRUxMZHNDcldPdlBtU0lmREFFNXpNOU1UUDBIaVpZ?=
 =?utf-8?B?clluRmVzS0pPcGJLRFIyRlVhbTZMK3M5Nk1HQ0VDMWxDRi94RHlhMW5DOHRy?=
 =?utf-8?B?YmRyYUNKMTQxalhTWGZJTklSSkxQN3Z0VzZvTWhOREI0b091TEh6VzZDdytO?=
 =?utf-8?B?ME9EcE9aVDd1ejhyRGExZjRNdjZPT2JzMjV6THNIdkFzU3QvWDZnbWhXMDgy?=
 =?utf-8?B?aHBkRlB2dHlxL0drNkZEYjRsWGRvS0poSVRNQWpFT3hmMk1CRVRBN05sUVRs?=
 =?utf-8?B?c1htdXFOYTFNR3ZmQWFXclE3RkJDeU5tTnNPWEExMjlZcFpJclRNcTJSWGUw?=
 =?utf-8?B?WlIzQXFNdlMxcGNNVi9adm1jRE1Tb21vUDd3T1RCYjkvYmNLb3M0SXpqdUxz?=
 =?utf-8?B?alBMTWdUTGFuWjJCR09vWDZpRUkxYWV5MEFHaTJRcmJWOEpBbnJnS2JlNEF0?=
 =?utf-8?B?U1lxZExoQUJMRTlpVWZjWEhpK2ZjN29vSmFhTGZzS3BENnlMMGFTZm1ibTVl?=
 =?utf-8?B?ZUlDa3hyd2kzTERZZW82NUV4ZjJHYmJ2OGlmSExodWRVRG1NM1JuUy9vWmQ2?=
 =?utf-8?B?VmlHTXlYZzc4QTNJYWFJRHRLbmFLVlpRcVN1K1BicEFvRVNucTRpRHk2SE81?=
 =?utf-8?Q?SuOkFc/jzh6paeNbWPZr5BbIc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f585c69-24a5-4833-c85b-08db515e8c83
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4997.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 13:57:53.3111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hA0LFixc8nfgnDpWqN19bLPWC/MPWr2Pjuj7KG7Spd4Aiusd9+JtFUrhz5LgeWiSqWMxqUsE86hW0cB1r1oLjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7145
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 10 May 2023 14:41:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683727078; x=1715263078;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5T1N42kgIIfbSQn0Tk7YwiUJ0FqPxfWpBofhy9i6WRA=;
 b=I0XWk9XsVVTkHpi9muJgizokvvO7cuSnFNIcoKtj2e6ACkOS7D+pVwI9
 8fdcFbalI8cx223SMfOwaJG0/EdjLDADQd7x0jHSSTsJ3NYOu2x582W3a
 eZIPatxX3cEbRETEFyH5Z9PlStHV4ZUPh4eSsPzEWv9+AM9En8JKBYrxI
 FOsqpVMOUoUHqawBDW/Hcn6GY7CWV+9aBeX7SGnOmPq2mS1tCRhHOpfG1
 mUc0X05CT5NRddFJgeD/I0oMZ1EXQ0XX7l98NzOnKu9XW5zVuxDqPuruF
 zXcmDvy86P+XXmRyDn/9JLazM3rPRxGQ2lbKLIcIm3A/N8Fve/5CKyh0R
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I0XWk9Xs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Schedule service task
 in IRQ thread_fn
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8xMC8yMDIzIDE1OjI3LCBNaWNoYWwgU2NobWlkdCB3cm90ZToKPiBPbiBUdWUsIE1heSA5
LCAyMDIzIGF0IDU6MDjigK9QTSBZb2NoYWkgSGFndmkgPHlvY2hhaS5oYWd2aUBpbnRlbC5jb20+
IHdyb3RlOgo+PiBPbiBzb21lIFJUIGtlcm5lbHMgKEUuZy46IE1vbnRhVmlzdGEpLAo+IAo+IFRo
YXQncyBub3QgcmVhbGx5IHJlbGV2YW50IGZvciB0aGUgdXBzdHJlYW0ga2VybmVsLCBpcyBpdD8K
PiAKPj4gICAzLjEwLjAtMTE2MC4xMS4xLnJ0NTYuMTE0NS5tdmlzdGEudGVzdC42LmVsNy54ODZf
NjQgIzEKPiAKPiBDYW4geW91IHNob3cgdGhlIGJ1Z3MgZXhpc3RzIGluIHRoZSBjdXJyZW50IHVw
c3RyZWFtIGtlcm5lbD8KCldlIHdpbGwgdHJ5IHRvIHJlcHJvZHVjZSB0aGlzIGlzc3VlIG9uIHRo
ZSB1cHN0cmVhbSBrZXJuZWwsIGFuZCBjb21lIApiYWNrIHRvIHlvdSwgaWYgcmVsZXZhbnQuCgot
LSAKWW9jaGFpIEhhZ3ZpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
