Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 643AEE545A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2019 21:30:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB9142107A;
	Fri, 25 Oct 2019 19:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwZwfG7JqEvQ; Fri, 25 Oct 2019 19:30:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5AC91203AD;
	Fri, 25 Oct 2019 19:30:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDF3A1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 19:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C9D9A85EF3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 19:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1il7AYDg79s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 19:30:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF74485E40
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 19:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eRmEhu6UaEE9aDlNXBAMxFiri2OdztWgkwKxSJoiZ7s=; b=N0sE4R4O6dRfbhhWJpeT2AZCV
 5qYj2nO9mONNABKxdKeG5MU9hjSvSqIyIU/ZowuG3q1df2Mt5b6L+AEwwrbVGmuivPhzfAeVJsuxe
 llD1ZFLQL8MHpA+KduLWRmHp1xqT5+hgS0V74Gbm2Q6SBS0aiuD7nf2S4lhioXwcIDbFUMXVC69cd
 sAxkeE42hfhRi7u5Uk01raoShpsq6U9iHP2Pw9nd67tEF4E8QjAgzWESB5Q2DGv0bce9YhNnJoKZW
 MteCGtihh7nGLw56DwWPDYGsUoTc8+U428/IpU9P7mnAMWKyWZs6VtULssZFyI084NS1MW9EwpdOH
 Bo2KVaH4Q==;
Received: from [2601:1c0:6280:3f0::9ef4]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5He-0003Ig-Tg; Fri, 25 Oct 2019 19:30:02 +0000
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB58968E1402@ORSMSX121.amr.corp.intel.com>
 <CAK7LNARAhZtzdnS9+mgtamj=pLdV81dudnYVDa8NRxcQPpF0bw@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB589693A38A@ORSMSX121.amr.corp.intel.com>
 <CAK7LNAQow8N9a5e_=pu7qDiuvETy1x1P5fxp20zYOZgQhXPJhg@mail.gmail.com>
 <02874ECE860811409154E81DA85FBB589693D053@ORSMSX121.amr.corp.intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <6127ec91-ad81-f0d7-576e-22e06e677442@infradead.org>
Date: Fri, 25 Oct 2019 12:30:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <02874ECE860811409154E81DA85FBB589693D053@ORSMSX121.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] namespace: fix namespace.pl script to
 support relative paths
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/25/19 10:45 AM, Keller, Jacob E wrote:
> 
>> -----Original Message-----
>> From: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Sent: Wednesday, October 23, 2019 6:22 PM
>> To: Keller, Jacob E <jacob.e.keller@intel.com>
>> Cc: Randy Dunlap <rdunlap@infradead.org>; intel-wired-lan@lists.osuosl.org;
>> linux-kernel@vger.kernel.org; linux-kbuild <linux-kbuild@vger.kernel.org>
>> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
>> paths
>>
>> On Thu, Oct 24, 2019 at 6:34 AM Keller, Jacob E
>> <jacob.e.keller@intel.com> wrote:
>>>
>>>> -----Original Message-----
>>>> From: Masahiro Yamada <yamada.masahiro@socionext.com>
>>>> Sent: Tuesday, October 22, 2019 10:22 PM
>>>> To: Keller, Jacob E <jacob.e.keller@intel.com>; Randy Dunlap
>>>> <rdunlap@infradead.org>
>>>> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-
>> kbuild
>>>> <linux-kbuild@vger.kernel.org>
>>>> Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative
>>>> paths
>>>>
>>>> This scripts has been 5-year broken,
>>>> and I did not see any complaint except from you.
>>>> So, I wonder how many people are using this.
>>>>
>>>> Nor, do I understand how to use it.
>>>>
>>>> Could you teach me a bit more about this script?
>>>>
>>>>
>>>>
>>>> Something might be missing in my mind, but
>>>> I do not know how to use this script in a useful way.
>>>>
>>>>
>>>>
>>>> It provides three checks.
>>>>
>>>> [1] list_multiply_defined()
>>>>
>>>> This warns multiple definition of functions.
>>>>
>>>> The compiler would fail if it saw any multiple definition,
>>>> so the reports from this check are all false-positive.
>>>>
>>>>
>>>> [2] resolve_external_references()
>>>>
>>>> This warns unresolved symbols.
>>>>
>>>> The compiler would fail if it saw any unresolved symbol,
>>>> so the reports from this check are all false-positive, too.
>>>>
>>>>
>>>
>>> The compiler won't necessarily fail when building modules, because the symbol
>> might be in another loadable module.
>>
>> Right, but this is already checked by modpost, isn't it?
>>
>>
>>
>>>>
>>>>
>>>> [3] list_extra_externals
>>>>
>>>> This warns symbols with no reference.
>>>>
>>>> This potentially contains lots of false-positives.
>>>> For example, the core framework provides APIs, but if all drivers
>>>> are disabled, there is no user of those APIs.
>>>>
>>>
>>> We use this to help verify that driver modules do not expose symbols.
>>
>> Ah, the output is quite large, so
>> you search for only modules in your interest. Right?
>>
> 
> We run it on only one module at a time, yes.
> 
>>
>> If you want to detect missing 'static',
>> have you tried 'sparse'?
>>
> 
> We've used that as well. 
> 
> To be fair, I agree that it covers similar functionality as other tools. I haven't looked directly at namespace.pl output in a while, and the fix here is multiple years old that took a long time to get picked up.
> 
> If it's agreed that the tool has no value, and especially if it results in false indications of a problem, then maybe removing it to prevent someone from mis-reading its output makes sense?

If there is a satisfactory alternative, I expect that namespace.pl is old,
unmaintained, and unneeded, and should go away.

-- 
~Randy

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
